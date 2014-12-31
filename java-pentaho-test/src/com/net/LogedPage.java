package com.net;


public class LogedPage {

	/**
	 * @param args
	 */
	    //title=Pentaho Business Analytics;
		// TODO Auto-generated method stub
	    //id="gwt-uid-6" =Home
		//gwt-uid-7 =Browse Files
	public static void main(String[] args) {			
	}
	String title;
	String homeMenuName;
	String adminMenu;
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getHomeMenuName() {
		return homeMenuName;
	}
	public void setHomeMenuName(String homeMenuName) {
		this.homeMenuName = homeMenuName;
	}
	public String getAdminMenu() {
		return adminMenu;
	}
	public void setAdminMenu(String adminMenu) {
		this.adminMenu = adminMenu;
	}
	//title=Pentaho Business Analytics;
	// TODO Auto-generated method stub
    //id="gwt-uid-6" =Home
	//gwt-uid-7 =Browse Files
public LogedPage getLogedPage() {
	
	
	LogedPage lp = new LogedPage();
	lp.adminMenu ="";
	lp.homeMenuName ="";
	lp.title="Pentaho Business Analytics";
	return lp;
}
}
