package lab6;

public class ATMThread extends Thread {
double localBalance = 0;
Account myTargetAccount;
boolean isSynchCall = false;
public ATMThread(Account a, boolean isSynchCall)
{
    this.myTargetAccount = a;
    this.isSynchCall = isSynchCall;
}

public void run()
{
    find(isSynchCall);
}

private void find(boolean isSynchCall){
	if(isSynchCall)
	synchronized (myTargetAccount){
	    localBalance = myTargetAccount.balance;
	    System.out.println(getName() + ": local balance = " + localBalance);
	    localBalance -= 100;
	    myTargetAccount.balance =  localBalance;
	}
	else {
		localBalance = myTargetAccount.balance;
	    System.out.println(getName() + ": local balance = " + localBalance);
	    localBalance -= 100;
	    myTargetAccount.balance =  localBalance;
	}
}


public static void main(String[] args) {

    Account account = new Account();
    System.out.println("START: Account balance = " + account.balance);

    ATMThread a = new ATMThread(account, false);
    ATMThread b = new ATMThread(account, false);

    a.start();
    b.start();

    try {
        a.join();
        b.join();
    } catch (InterruptedException ex) {
        ex.printStackTrace();
    }

    System.out.println("END: Account balance = " + account.balance);
    
    

    ATMThread c = new ATMThread(account, true);
    ATMThread d = new ATMThread(account, true);

    c.start();
    d.start();

    try {
        c.join();
        d.join();
    } catch (InterruptedException ex) {
        ex.printStackTrace();
    }
    System.out.println("END: Account balance = " + account.balance);
    
}

 }
