import java.io.BufferedReader;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.ServerSocket;
import java.net.Socket;
import java.util.ArrayList;

public class SSCCEServer {
    static ArrayList<PrintWriter> clientOutputStreams;
    static ArrayList<DataOutputStream> clientDataOutputStreams;
    static ArrayList<String> onlineUsers = new ArrayList<>();
    public class ClientHandler implements Runnable  {
        BufferedReader reader;
        Socket sock;
        PrintWriter client;


        public ClientHandler(Socket clientSocket, PrintWriter user) {
        // new inputStreamReader and then add it to a BufferedReader
            client = user;
            try {
                sock = clientSocket;
                System.out.println(clientSocket.getRemoteSocketAddress().toString() + " - ");
                InputStreamReader isReader = new InputStreamReader(sock.getInputStream());
                reader = new BufferedReader(isReader);
            }
            catch (Exception ex) {
                System.out.println("error beginning StreamReader");
            }

        }

        public void run() {
            String message;
            String[] data;
            try {
                while ((message = reader.readLine()) != null) {

                    data = message.split("`");

                    if(data[2].equals("receiveFile")){
                        DataInputStream in = new DataInputStream(sock.getInputStream());
                        byte[] bytes = new byte[Integer.parseInt(data[1])];
                        in.read(bytes);
                        tellEveryone(data[0] + "`" + data[1] + "`" + data[2] + "`" + data[3]);
                        for(DataOutputStream dos:clientDataOutputStreams){
                            try {
                                dos.write(bytes);
                                dos.close();
                            }
                            catch (Exception ex) {
                                System.out.println("error telling everyone");
                            }
                        }
                        tellEveryone("File transfer complete``server");
                    }else if(data[2].equals("connect")){
                        System.out.println(data[0] + "has connected.");
                    }else {
                        System.out.println("No Conditions were met.");
                      }
                 }
            }
            catch (Exception ex) {
                System.out.println("lost a connection");
                System.out.println(ex.getMessage().toString());
                clientOutputStreams.remove(client);
            }
        }
    }
    public void tellEveryone(String message) {
    // sends message to everyone connected to server
        for(PrintWriter writer:clientOutputStreams){
                try {
                    writer.println(message);
                    //pop("Sending: " + message);
                    writer.flush();
                }
                catch (Exception ex) {
                    System.out.println("error telling everyone");
                }
        }
       }
    public static void main(String[] args) {
        new SSCCEServer().go();
    }
    public void go(){
        clientOutputStreams = new ArrayList<PrintWriter>();
        clientDataOutputStreams = new ArrayList<>();

        try {
            @SuppressWarnings("resource")
            ServerSocket serverSock = new ServerSocket(5000);
            while(true){
                Socket clientSock = serverSock.accept();
                PrintWriter writer = new PrintWriter(clientSock.getOutputStream());
                clientOutputStreams.add(writer);
                clientDataOutputStreams.add(new DataOutputStream(clientSock.getOutputStream()));
                Thread listener = new Thread(new ClientHandler(clientSock, writer));
                listener.start();
            }
        } 
        catch (Exception ex)
        {
            System.out.println("error making a connection");
        }
    }

}