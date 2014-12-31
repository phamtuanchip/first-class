package lab6;

public class SynchTestThread {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		PrintDemo PD2 = new PrintDemo();
		   ThreadDemoSynch T3 = new ThreadDemoSynch("Thread - 3 ", PD2 );
		   ThreadDemoSynch T4 = new ThreadDemoSynch("Thread - 4 ", PD2 );
		   
		   T3.start();
		   T4.start();
		   
		   // wait for threads to end
		   try {
			   T3.join();
			   T4.join();
		   } catch( Exception e) {
		      System.out.println("Interrupted");
		   }
	}

}
