package lab7;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class RunThread {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		ExecutorService ex = Executors.newFixedThreadPool(3);
		ex.execute(new PrintChar('a', 100));
		ex.execute(new PrintChar('b', 100));
		ex.execute(new PrintNum(100));
		ex.shutdown();
	}

}
