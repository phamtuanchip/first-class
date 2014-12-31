package lab6;

public class SynchMethod implements Runnable {

	public static synchronized void test1(){
		
		System.out.println(Thread.currentThread().getName());
	}
	@Override
	public void run() {
		
		test1();
	}

}
