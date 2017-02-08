import java.awt.BorderLayout;
import java.awt.EventQueue;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.Socket;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.JTextArea;
import javax.swing.JTextField;
import javax.swing.border.EmptyBorder;

public class SSCCEChatClient extends JFrame {

    private JPanel contentPane;
    private JTextField inputUsernameField;
    private JTextArea textArea;
    String serversock = "localhost";
    String username;
    Socket sock;
    BufferedReader reader;
    PrintWriter writer;
    InputStreamReader streamreader;

    public class IncomingReader implements Runnable{

        public void run() {
            String stream;
            String[] data;

            try {
                while ((stream = reader.readLine()) != null) {

                    data = stream.split("`");
                     if(data[2].equals("receiveFile")&&(!data[3].equals(username))){
                        DataInputStream in = new DataInputStream(sock.getInputStream());
                        byte[] bytes = new byte[Integer.parseInt(data[1])];
                        in.read(bytes);
                        FileOutputStream fos = new FileOutputStream(System.getProperty("user.home") + "\\Desktop\\" + data[0]);
                        fos.write(bytes);
                        fos.close();
                        in.close();
                        textArea.append("Success!");
                    }else if(data[2].equals("server")){
                        textArea.append(data[0]);
                    }

                }
           }catch(Exception ex) {
           }
        }
    }//Incoming Reader

    public static void main(String[] args) {
        EventQueue.invokeLater(new Runnable() {
            public void run() {
                try {
                    SSCCEChatClient frame = new SSCCEChatClient();
                    frame.setVisible(true);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        });
    }

    public SSCCEChatClient() {
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setBounds(100, 100, 450, 300);
        contentPane = new JPanel();
        contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
        contentPane.setLayout(new BorderLayout(0, 0));
        setContentPane(contentPane);

        textArea = new JTextArea();
        contentPane.add(textArea, BorderLayout.SOUTH);

        JButton btnNewButton = new JButton("Send File");
        btnNewButton.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent arg0) {
                File transferFile = new File (System.getProperty("user.home") + "\\Desktop\\PNG\\Night.png");
                byte [] bytearray  = new byte [(int)transferFile.length()];
                try {
                    BufferedInputStream bin = new BufferedInputStream(new FileInputStream(transferFile));
                    bin.read(bytearray,0,bytearray.length);
                    DataOutputStream os = new DataOutputStream(sock.getOutputStream());
                    writer.println(transferFile.getName() + "`" + transferFile.length() + "`receiveFile`" + username);
                    writer.flush();
                    os.write(bytearray,0,bytearray.length);
                    os.flush();
                    bin.close();
                    os.close();

                } catch (IOException e) {
                    e.printStackTrace();
                }
                System.out.println("File transfer complete");
            }
        });
        contentPane.add(btnNewButton, BorderLayout.CENTER);

        JButton btnNewButton_1 = new JButton("Connect");
        btnNewButton_1.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                try {
                    username = inputUsernameField.getText();
                    sock = new Socket(serversock, 5000);
                    streamreader = new InputStreamReader(sock.getInputStream());
                    reader = new BufferedReader(streamreader);
                    writer = new PrintWriter(sock.getOutputStream());
                    Thread IncomingReader = new Thread(new IncomingReader());
                    IncomingReader.start();
                    writer.println(username + "``connect");
                    writer.flush();

                } catch (Exception ex) {
                    textArea.append("\nCannot Connect!");
                }
            }
        });
        contentPane.add(btnNewButton_1, BorderLayout.WEST);

        inputUsernameField = new JTextField();
        contentPane.add(inputUsernameField, BorderLayout.NORTH);
        inputUsernameField.setColumns(10);
    }

}