
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.net.InetAddress;
import java.net.Socket;
 

public class FileClient {
	
	private Socket s;
	String directory ;
	String hostDomain;
	int port ;

	
	
	public FileClient(String host, int port, String dir) {
		try {
			//s = new Socket(host, port);
			hostDomain = host;
			this.port = port;
			directory = dir;
			sendFile(dir);
		} catch (Exception e) {
			e.printStackTrace();
		}		
	}
	
	public void sendFile(String dir) throws IOException {
		File[] files = new File(directory).listFiles();

		Socket socket = new Socket(InetAddress.getByName(hostDomain), port);

		BufferedOutputStream bos = new BufferedOutputStream(socket.getOutputStream());
		DataOutputStream dos = new DataOutputStream(bos);

		dos.writeInt(files.length);

		for(File file : files)
		{
		    long length = file.length();
		    dos.writeLong(length);

		    String name = file.getName();
		    dos.writeUTF(name);

		    FileInputStream fis = new FileInputStream(file);
		    BufferedInputStream bis = new BufferedInputStream(fis);

		    int theByte = 0;
		    while((theByte = bis.read()) != -1) bos.write(theByte);

		    bis.close();
		}

		dos.close();
	}
	
	public static void main(String[] args) {
		//FileClient fc = new FileClient("localhost", 1988, "cat.jpg");
		FileClient fc = new FileClient("localhost", 1988, "c:\\client-data");
	}

}
