package lab7;

public class PrintNum implements Runnable {
	private int lastNum ;
	public PrintNum(int n){
		lastNum = n;
	}
	@Override
	public void run() {
		System.out.println(" " + lastNum);
		
	}

}
