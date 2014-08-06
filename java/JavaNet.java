import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.MalformedURLException;
import java.net.URL;


public class JavaNet {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		URL u;
		try {
			u = new URL("http://www.terna.it/LinkClick.aspx?fileticket=amuQ6sy7rZI%3d&tabid=215&mid=102");
			InputStream i = u.openStream();
			 
			FileOutputStream fo = new FileOutputStream("test.pdf");
			int length = -1;
			byte[] buffer = new byte[1024];// buffer for portion of data from
			                                // connection
			while ((length = i.read(buffer)) > -1) {
			    fo.write(buffer, 0, length);
			}
			fo.close();
			i.close();
		 
		} catch (MalformedURLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
	 
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
