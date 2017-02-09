
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.DataInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.ServerSocket;
import java.net.Socket;

public class FileServer extends Thread {
	
	private ServerSocket ss;
	String dirPath = "c:\\server-data";
	int port ;
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

		for(int i = 0; i < filesCount; i++)
		{
		    long fileLength = dis.readLong();
		    String fileName = dis.readUTF();

		    files[i] = new File(dirPath + "/" + fileName);

		    FileOutputStream fos = new FileOutputStream(files[i]);
		    BufferedOutputStream bos = new BufferedOutputStream(fos);

		    for(int j = 0; j < fileLength; j++) bos.write(bis.read());

		    bos.close();
		}

		dis.close();
		
		/*
		DataInputStream dis = new DataInputStream(clientSock.getInputStream());
		FileOutputStream fos = new FileOutputStream("datafile" + System.currentTimeMillis());
		try {
			
			byte[] buffer = new byte[4096];
			
			int filesize = 15123; // Send file size in separate msg
			int read = 0;
			int totalRead = 0;
			int remaining = filesize;
			while((read = dis.read(buffer, 0, Math.min(buffer.length, remaining))) > 0) {
				totalRead += read;
				remaining -= read;
				System.out.println("read " + totalRead + " bytes.");
				fos.write(buffer, 0, read);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			fos.close();
			dis.close();
		}
		**/
		
		
	}
	
	public static void main(String[] args) {
		try {
			FileServer fs = new FileServer(args[0], 1988);
		} catch (IndexOutOfBoundsException e) {
			FileServer fs = new FileServer(1988);
			fs.start();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}
