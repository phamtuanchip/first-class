import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.ArrayList;
import java.util.Scanner;



public class Chapter19 {
	ArrayList<String> data_ = new ArrayList<String>();

	public void createWorker(){
		System.out.print("Name : ");
		Scanner s = new Scanner(System.in);
		data_.add(s.nextLine());
		initMenu();
	}
	public void saveData(){
		if(data_.size() <= 0 ) {
			System.out.println("You have to create db first!");
			return ;

		}
		try {
			ObjectOutputStream oos = new ObjectOutputStream(new FileOutputStream("danhsach.dat"));
			oos.writeObject(data_);
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e2) {
			e2.printStackTrace();
		}
		System.out.println("Data saved!");
		initMenu();
	}
	public void readData(){
		try {
			ObjectInputStream ios = new ObjectInputStream(new FileInputStream("danhsach.dat"));
			data_ = (ArrayList<String>)ios.readObject();
			if(data_ == null) {
				System.out.println("Have no data in file!");
				return;
			}
			for(String name : data_) System.out.println("Employee : " + name);
		} catch (FileNotFoundException e) {
			e.printStackTrace();
			System.out.println("File is not avaiable ");
			return ;
		} catch (IOException  e2) {
			e2.printStackTrace();
		} catch (ClassNotFoundException e3) {
			e3.printStackTrace();
		}
		initMenu();
	}
	public void initMenu() {
		System.out.println("-----------Menu-----------------");
		System.out.println("1) Create worker");
		System.out.println("2) Create manager");
		System.out.println("3) Save to file");
		System.out.println("4) Read from file");
		System.out.println("Chose one: ");
		Scanner s = new Scanner(System.in);
		switch (s.nextInt()) {
		case 1: createWorker();
				break;
		case 3: saveData();	
				break;
		case 4: readData();
				break;
		default:
				break;
		}



	}

	public static void main(String[] args){
		new Chapter19().initMenu();
	}
}
