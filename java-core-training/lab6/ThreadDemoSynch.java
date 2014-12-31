package lab6;

public class ThreadDemoSynch extends Thread {
		   private Thread t;
		   private String threadName;
		   PrintDemo  PD;

		   ThreadDemoSynch( String name,  PrintDemo pd){
		       threadName = name;
		       PD = pd;
		   }
		   public void run() {
		     synchronized(PD) {
		        PD.printCount();
		     }
		     System.out.println("Thread " +  threadName + " exiting.");
		   }

		   public void start ()
		   {
		      System.out.println("Starting " +  threadName );
		      if (t == null)
		      {
		         t = new Thread (this, threadName);
		         t.start ();
		      }
		   }

}
