package lab6;

class PrintDemo {
	   public void printCount(){
	    try {
	         for(int i = 50; i > 0; i--) {
	            System.out.println("Counter   ---   "  + i );
	         }
	     } catch (Exception e) {
	         System.out.println("Thread  interrupted.");
	     }
	   }

	}

