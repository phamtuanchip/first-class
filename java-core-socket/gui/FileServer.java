
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.DataInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.ServerSocket;
import java.net.Socket;
import java.text.SimpleDateFormat;
import java.util.Date;

public class FileServer extends Thread {
	
	private ServerSocket ss;
	String dirPath = "c:\\server-data";
	int port ;
	boolean isbackup = false;
	ServerSocket serverSocket;
	
	public FileServer(int port) {
		this.port = port;
		openSocket();
	}
	public void openSocket(){
		try {
			ss = new ServerSocket(port);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	public FileServer(String fullPath, int port) {		
		this.dirPath = fullPath;
		this.port = port;
		openSocket();
	}
	public FileServer(String fullPath, int port, boolean isBackup) {		
		this.dirPath = fullPath;
		this.port = port;
		this.isbackup = isBackup;
		openSocket();
	}
	
	public void run() {
		while (true) {
			try {
				Socket clientSock = ss.accept();
				saveFile(clientSock);
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}

	private void saveFile(Socket clientSock) throws IOException {
		BufferedInputStream bis = new BufferedInputStream(clientSock.getInputStream());
		DataInputStream dis = new DataInputStream(bis);

		int filesCount = dis.readInt();
		File[] files = new File[filesCount];
		
		File target = new File(dirPath +"/" + new SimpleDateFormat("yyyyddMMhhmmss").format(new Date()));
		target.mkdirs();
		for(int i = 0; i < filesCount; i++)
		{
		    long fileLength = dis.readLong();
		    String fileName = dis.readUTF();
		    if(isbackup) dirPath = target.getAbsolutePath();
		    files[i] = new File(dirPath + "/" + fileName);

		    FileOutputStream fos = new FileOutputStream(files[i]);
		    BufferedOutputStream bos = new BufferedOutputStream(fos);

		    for(int j = 0; j < fileLength; j++) bos.write(bis.read());

		    bos.close();
		}
		dis.close();		
	}
	
	public static void main(String[] args) {
		try {
			FileServer fs = new FileServer(args[0], Integer.parseInt(args[1]), Boolean.parseBoolean(args[2]));
			fs.start();
		} catch (IndexOutOfBoundsException e) {
			FileServer fs = new FileServer(1988);
			fs.start();
		} catch (NumberFormatException e) {
			FileServer fs = new FileServer(1988);
			fs.start();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}
