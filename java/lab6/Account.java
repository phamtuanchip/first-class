package lab6;

public class Account {

    public double balance = 1500;

   public synchronized double withDrawFromPrivateBalance(double a)
   {
                 balance -= a;
                 return balance;
   }


}
