package nvt.dlm;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;


import static org.junit.Assert.*;

import java.util.List;

import org.apache.xpath.operations.Lt;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import org.openqa.selenium.*;
import org.openqa.selenium.WebDriver.Navigation;
import org.openqa.selenium.WebDriver.Options;
import org.openqa.selenium.WebDriver.TargetLocator;
import org.openqa.selenium.browserlaunchers.DoNotUseProxyPac;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.firefox.FirefoxProfile;
import org.openqa.selenium.htmlunit.HtmlUnitDriver;
import org.openqa.selenium.JavascriptExecutor;
import org.w3c.dom.Element;

import com.thoughtworks.selenium.SeleniumException;

public class Download_ATest {

	public static String ROOTURL ="http://www.terna.it/default/Home/SISTEMA_ELETTRICO/cosa_sistema_elettrico/OPERATORI_ELETTRICI_Archivio.aspx";
	public static String kt="http://www.terna.it/LinkClick.aspx?fileticket=amuQ6sy7rZI%3d&tabid=215&mid=102";
	public static String tempURL="";
	public static String myDivId="dnn_ContentPane";//"dnn_ctr102_ModuleContent"; // noi dung chua  tai lieu can thiet 
	public static String myDivPobup ="dnn_ctr102_Announcements_contentPane";
	public static String contents="LinkClick";//"fileticket"; 
	public static String IdPhantrang= "dnn_ctr102_Announcements_ltPage"; //id="dnn_ctr102_Announcements_ltPage"
	public static String year="Nessuno";//"2013";
	public static String yearAll="-1"; 
	public static WebDriver webdr = null;
	public static List<WebDriver> ld = new ArrayList<WebDriver>();
	public static List<String> lsUrl= new ArrayList<String>(); 
	public static List<WebElement> lsElementClone =null;
	public static List<String> lsLink = new ArrayList<String>();
	
	
	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
	}

	@AfterClass
	public static void tearDownAfterClass() throws Exception {
	}

	@Test
	public void test() {

		test1();
		String t= "";
		
	}
	
	static { 
		System.out.println("title : "  );
		FirefoxProfile firefoxProfile= DownLoad();
		System.out.println("title : "  );
		webdr= new FirefoxDriver(firefoxProfile);
		System.out.println("title : " );
		}
	public void test1() {
	int a=0;	
	
	  // WebDriver driver = new FirefoxDriver(profile);
	    
        FirefoxProfile firefoxProfile= DownLoad();
		//WebDriver dr= new FirefoxDriver();
		//WebDriver dr= new FirefoxDriver(profile);
		WebDriver dr = new FirefoxDriver(firefoxProfile); 
		//driver.get(url);
		dr.get(ROOTURL);
		SelectClick(dr);
		System.out.println("title : " + dr.getTitle());
	    getLinkOnPage(dr);
	    
		
		WebElement ltpage= dr.findElement(By.id(IdPhantrang));
		String ss= ltpage.getText();
		System.out.println("No dung: " + ss );
		List<WebElement> lsPhanTrang = ltpage.findElements(By.tagName("a"));	
		//WebElement e0 = lsPhanTrang.get(2);
	  	//e0.click();
	 int num= lsPhanTrang.size();
	 System.out.println("So trang : " + num);
		
	 try{
		 
	  for(int x=0;x<num;x++) { 
		  System.out.println("Chuan bi for ! ");
		  ltpage= dr.findElement(By.id(IdPhantrang));
		  lsPhanTrang = ltpage.findElements(By.tagName("a"));	
		  WebElement e= lsPhanTrang.get(x);	
	   //for(WebElement e : lsPhanTrang) {
		  System.out.println(" lay duoc phan trang  ! ");
			String att = e.getAttribute("href");
			  System.out.println(" lay duoc thuco tinh   ! ");
			System.out.println("Link cua phan trang xxxxxxxxx :" + att);
			//if(att.contains(contents)){		  
			//	lsUrl.add(att);
			  try{
				  
				  e.click();
				getLinkOnPage(dr);
			  }catch (SeleniumException ex) {
				  
				  ex.printStackTrace();
			  }
			//System.out.println(att);
			//}
			  System.out.println("Quay lai vong lapj for ! ");
		}
	 }catch ( Exception ec) {
		 
		 ec.printStackTrace();
	 }		 	
	}
	public void test2() {
	int a=0;	
		
	    
        FirefoxProfile firefoxProfile= DownLoad();
		WebDriver dr= new FirefoxDriver();
		//WebDriver driver = new FirefoxDriver(firefoxProfile); 
		//driver.get(url);
		dr.get(ROOTURL);
		System.out.println("title : " + dr.getTitle());
		//SelectClick(dr);
		
		//WebElement ltpage= dr.findElement(By.id(IdPhantrang));
		List<WebElement> lsPhanTrang = dr.findElements(By.tagName("a"));	
		System.out.println("Gia tri null");
		WebElement e0 = lsPhanTrang.get(1);
		 System.out.println("Gia tri null");
		if(e0==null) { System.out.println("Gia tri null");} else {System.out.println("Gia tri ko null");}
	//	e0.click();
	
		for(WebElement e : lsPhanTrang) {
			
			//System.out.println("hello ba con ");
			String att = e.getAttribute("href");
			if(att.contains(contents)){		 
				lsUrl.add(att);
				System.out.println(att);
			}
			
		}
	 	
	}
	
void getLinkOnPage( WebDriver dr) {
	System.out.println("Chuan bi getlink Onpage ");
	
       WebElement mydiv= dr.findElement(By.id(myDivId));		
		String ss= mydiv.getText();
		//System.out.println(ss);
		
		List<WebElement> mylinks= mydiv.findElements(By.tagName("a"));
		//List<WebElement> mylinks= dr.findElements(By.tagName("a"));
		for(WebElement e : mylinks) {
		//	a++;
		//System.out.println("\n"+	e.getText());
			try {
			String att = e.getAttribute("href");
			if(att.contains(contents)){		 
				lsUrl.add(att);
				System.out.println("thuoc tinh : " + att);
			 	webdr.get(att);
			
		  }else {
			 /* try {
			   if(e.isDisplayed()) {
				  e.click();
			   }
			  } catch (Exception ex) { ex.printStackTrace();}
			 //System.println("")
			  WebElement div0 = dr.findElement(By.id(myDivPobup));		 
			  List<String> ls= getList_a_from(div0);
			  for(String s: ls) {lsUrl.add(s);
			  System.out.println(s);
			  }
			*/ 
		   }
		   
		} catch (SeleniumException ex) {ex.printStackTrace();} 
		
			  }

		
	}
	
	//<select name="dnn$ctr102$Announcements$lstYear" id= "dnn_ctr102_Announcements_lstYear"
    static 	void  SelectClick(WebDriver driver) {
      String selec= "dnn_ctr102_Announcements_lstYear";
      WebElement select = driver.findElement(By.id(selec));
      List<WebElement> options = select.findElements(By.tagName("option"));
      WebElement myOption = null;
      for (WebElement option : options) {
        if(option.getText().contains(year))
         {   System.out.println("gia tri trong select : "+ option.getText());
    	  myOption= option;    
    	  break;
         }
      }
      try{
      System.out.println(" ra khoi vong for  bat dau click  " );      
      myOption.click();
      System.out.println(" ra khoi vong for  sau khi  click  " );   
      } catch (SeleniumException ex) {
    	  ex.printStackTrace();
      }
    } 

	static FirefoxProfile DownLoad( String url) {
		
		FirefoxProfile firefoxProfile = new FirefoxProfile();

		firefoxProfile.setPreference("browser.download.folderList", 2);
		firefoxProfile.setPreference("browser.download.manager.showWhenStarting", false);
		firefoxProfile.setPreference("browser.download.dir", "c:\\tmp");
		firefoxProfile.setPreference("browser.helperApps.neverAsk.saveToDisk", "application/pdf");
		firefoxProfile.setPreference("pdfjs.disabled", true);
		firefoxProfile.setPreference("plugin.scan.Acrobat", "99.0");
		firefoxProfile.setPreference("plugin.scan.plid.all", false);
		WebDriver driver = new FirefoxDriver(firefoxProfile);
 
		driver.get(url);
		return firefoxProfile;
	}
    static FirefoxProfile DownLoad() {
		
		FirefoxProfile firefoxProfile = new FirefoxProfile();
		firefoxProfile.setPreference("browser.download.folderList", 2);
		firefoxProfile.setPreference("browser.download.manager.showWhenStarting", false);
		firefoxProfile.setPreference("browser.download.dir", "c:\\tmp");
		firefoxProfile.setPreference("browser.helperApps.neverAsk.saveToDisk", "application/pdf");
		firefoxProfile.setPreference("pdfjs.disabled", true);
		firefoxProfile.setPreference("plugin.scan.Acrobat", "99.0");
		firefoxProfile.setPreference("plugin.scan.plid.all", false);
		firefoxProfile.setPreference("javascript.enabled", true);
		//WebDriver driver = new FirefoxDriver(firefoxProfile);
		//driver.get(url);
		return firefoxProfile;
	}

//Co the dung de lay cac link trong mot div 
   List<String> getList_a_from(WebElement el) {
	   
	   List<WebElement> ls = el.findElements(By.tagName("a"));	 
	   List<String> l = new ArrayList<String>();
	   for(WebElement e : ls){
		   String s = e.getText();
		   if(s.contains(contents)) {
			   l.add(s);			   
		   }
	   }
	   return null;
   }
	
}
	 
	
