package lab7;

public class PrintChar implements Runnable {

	 private char charToPrint ;
	 private int time;
	 public PrintChar(char c, int t){
		 charToPrint = c;
		 time = t;
	 }
	@Override
	public void run() {
		for(int i = 0; i < time; i++) System.out.print(charToPrint);
		
	}

}
