package net.viralpatel.struts.displaytag;
 
import java.util.ArrayList;
 
public class ForbesData {
    private int rank;
    private String name;
    private int age;
    private double netWorth;
 
    public ForbesData() {
 
    }
     
    public ForbesData(int rank, String name, int age, double netWorth) {
        this.rank = rank;
        this.name = name;
        this.age = age;
        this.netWorth = netWorth;
    }
    public ArrayList<ForbesData> loadData() {
        ArrayList<ForbesData> userList = new ArrayList<ForbesData>();
        userList.add(new ForbesData(1, "William Gates III", 53, 40.0));
        userList.add(new ForbesData(2, "Warren Buffett", 78, 37));
        userList.add(new ForbesData(3, "Carlos Slim Helu &amp; family", 69, 35));
        userList.add(new ForbesData(4, "Lawrence Ellison", 64, 22.5));
        userList.add(new ForbesData(5, "Ingvar Kamprad &amp; family", 83, 22));
        userList.add(new ForbesData(6, "Karl Albrecht", 89, 21.5));
        userList.add(new ForbesData(7, "Mukesh Ambani", 51, 19.5));
        userList.add(new ForbesData(8, "Lakshmi Mittal", 58, 19.3));
        userList.add(new ForbesData(9, "Theo Albrecht", 87, 18.8));
        userList.add(new ForbesData(10, "Amancio Ortega", 73, 18.3));
        userList.add(new ForbesData(11, "Jim Walton", 61, 17.8));
        userList.add(new ForbesData(12, "Alice Walton", 59, 17.6));
        userList.add(new ForbesData(12, "Christy Walton &amp; family", 54, 17.6));
        userList.add(new ForbesData(12, "S Robson Walton", 65, 17.6));
        userList.add(new ForbesData(15, "Bernard Arnault", 60, 16.5));
        userList.add(new ForbesData(16, "Li Ka-shing", 80, 16.2));
        userList.add(new ForbesData(17, "Michael Bloomberg", 67, 16));
        userList.add(new ForbesData(18, "Stefan Persson", 61, 14.5));
        userList.add(new ForbesData(19, "Charles Koch", 73, 14));
        userList.add(new ForbesData(19, "David Koch", 68, 14));
        userList.add(new ForbesData(21, "Liliane Bettencourt", 86, 13.4));
        userList.add(new ForbesData(22, "Prince Alwaleed Bin Talal Alsaud", 54, 13.3));
        return userList;
    }
    public int getRank() {
        return rank;
    }
    public void setRank(int rank) {
        this.rank = rank;
    }
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    public int getAge() {
        return age;
    }
    public void setAge(int age) {
        this.age = age;
    }
    public double getNetWorth() {
        return netWorth;
    }
    public void setNetWorth(double netWorth) {
        this.netWorth = netWorth;
    }
}