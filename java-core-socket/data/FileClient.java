
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.net.Socket;
 

public class FileClient {
	
	private Socket s;
	
	public FileClient(String host, int port, String file) {
		try {
			s = new Socket(host, port);
			sendFile(file);
		} catch (Exception e) {
			e.printStackTrace();
		}		
	}
	
	public void sendFile(String dir) throws IOException {
		DataOutputStream dos = new DataOutputStream(s.getOutputStream());
		File[] files = new File(dir).listFiles();
		for(File f : files) {
			FileInputStream fis = new FileInputStream(f.getAbsolutePath());
		try {
			
			byte[] buffer = new byte[4096];
			
			while (fis.read(buffer) > 0) {
				dos.write(buffer);
			}		
			
		} catch (Exception e) {
			// TODO: handle exception
		} finally {
			fis.close();
			dos.close();	
		}	
		
		}
	}
	
	public static void main(String[] args) {
		//FileClient fc = new FileClient("localhost", 1988, "cat.jpg");
		FileClient fc = new FileClient("localhost", 1988, args[0]);
	}

}
