/**
 * 
 */
package com.net;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.htmlunit.HtmlUnitDriver;
import org.openqa.selenium.JavascriptExecutor;

/**
 * @author nvtuan
 * @param <IWebElement>
 *
 */
public class MyTest2<IWebElement> {

	/**
	 * @throws java.lang.Exception
	 */
	
	public static String url="http://localhost:8080/pentaho";
	public static String url1="http://localhost:8080/pentaho/Login";
	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
	}

	/**
	 * @throws java.lang.Exception
	 */
	@AfterClass
	public static void tearDownAfterClass() throws Exception {
	}

	/**
	 * @throws java.lang.Exception
	 */
	@Before
	public void setUp() throws Exception {
	}

	/**
	 * @throws java.lang.Exception
	 */
	@After
	public void tearDown() throws Exception {
	}

	@Test
	public void test() {
		//WebDriver wd = new  HtmlUnitDriver();
		//wd.get("http://www.google.com.vn");
		//assertEquals("", "");
		
		//test2();
		//test3();
		testLogin() ; // -- ok voi che do khong dong bo
		//assertEquals("", "");
	}
	
	 void test2() {
    	//WebDriver driver = new HtmlUnitDriver();
    	WebDriver driver = new FirefoxDriver();
        // And now use this to visit Google
        driver.get("http://www.google.com");
        System.out.println("Page title is: " + driver.getTitle());
        // Find the text input element by its name
         WebElement element = driver.findElement(By.name("q"));
        
        // Enter something to search for
        element.sendKeys("bach thuoc");

        element.click();
        // Now submit the form. WebDriver will find the form for us from the element
        //element.submit();
        WebElement e2 = driver.findElement(By.name("btnK"));
        e2.submit();        
        // Check the title of the page
        System.out.println("Page title is: " + driver.getTitle());

        //driver.quit();  	
    }
	 
	 void test3() {
		 WebDriver driver = new FirefoxDriver();
	        // And now use this to visit Google
	     //   driver.get("http://localhost:8080/pentaho/Login");
	        driver.get("http://localhost:8080/pentaho");
	        long end = System.currentTimeMillis() + 5000;
	        WebElement ele =null;
	        while (System.currentTimeMillis() < end) {
	        	   ele= driver.findElement(By.id("eval-users-toggle"));

	            // If results have been returned, the results are displayed in a drop down.
	            if (ele.isDisplayed()) {
	              break;
	            }
	        }

	        
	      
	        System.out.println("text: "+ ele.getText()+ "\n" + "TagName: .  " + ele.getTagName()  );
	        
	       // WebDriver driver1 = new AnyDriverYouWant();
	        if (driver instanceof JavascriptExecutor) {
	            ((JavascriptExecutor)driver).executeScript("toggleEvalPanel();");
	        }
	        
	        if (driver instanceof JavascriptExecutor) {
	        	System.out.println("Chuan bi Login .");
	        	((JavascriptExecutor)driver).executeScript("loginAs('Admin', 'password');");
	        }else {
	        	
	        	System.out.println("Khoong co .");
	        }
	        
	        try {
				Thread.sleep(4000);
			} catch (InterruptedException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}	        
	        // ele.click();	        
	        //                     
           // <div id="eval-users-toggle" onclick="toggleEvalPanel()">
           //   <div>Login as an Evaluator</div>
            //    <div id="eval-arrow" class="closed"></div>
           // </div>
	       //GO<button class="btn" onclick="loginAs('Admin', 'password');">GO</button>    
		 
	 }
	 void testUrl() {
		 WebDriver driver = new FirefoxDriver();
		 driver.get(url);		 
		 //while()				 
	 }
	 
	 void testLogin() {
		 WebDriver driver = new FirefoxDriver();
		 driver.get(url);
	        long end = System.currentTimeMillis() + 3500;
	        WebElement ele =null;
	      //  while (System.currentTimeMillis() < end) {
	        	 //  ele= driver.findElement(By.id("eval-users-toggle"));
	            // If results have been returned, the results are displayed in a drop down.
	          //  if (ele.isDisplayed()) {
	          //    break;
	           // }
	      //  }
	        
	        try {
				Thread.sleep(3500);
			} catch (InterruptedException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	        
	        WebElement user = driver.findElement(By.id("j_username"));
	        WebElement pass = driver.findElement(By.id("j_password"));
	        AccountLogin acc = AccountLogin.getAcountAdminLogin();
	        user.sendKeys(acc.getName()) ;	        
	        pass.sendKeys(acc.getPass());	       
	       
	        pass.submit();
		 	        
	    
	        try {
				Thread.sleep(5000);
			} catch (InterruptedException e) {				
				e.printStackTrace();
			}
	      	  
	        long end1 = System.currentTimeMillis() + 6000;
	         List<WebElement> elements =null;
	        
            String ketqua="xx ";
             while (System.currentTimeMillis() < end1) {
	        	 try{
	        		 elements = driver.findElements(By.tagName("div"));	        					        	 	       
	        		 if (elements.size() >0) {
	        			 break;
		             }
	        	 } catch (Exception x) {	        		 	        		
	        	 } 	        	 
	        	 //If results have been returned, the results are displayed in a drop down.	            
	        }
             
             try {
	               int a = elements.size();   
	          System.out.println("so hang: " + a); 	   
	        		 for( WebElement elem : elements ) {        			 
	        			 ketqua+= elem.getText();
	        		 }
	        		  
             }catch (Exception x) {           	            	 
             }
	      // String t=  ele.getText();
	       System.out.println("title: "+ ketqua); 
	       boolean admin = ketqua.toLowerCase(). contains("admin");
	       assertEquals(true, admin);   // if  String  ketqua content 'admin'  then function is ok. 
	        
	 }
	 
	 String getAdmin() {
		 WebDriver driver = new FirefoxDriver();
		 driver.get(url);
	        long end = System.currentTimeMillis() + 3500;
	        WebElement ele =null;	        
	        try {
				Thread.sleep(3500);
			} catch (InterruptedException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}	        
	        WebElement user = driver.findElement(By.id("j_username"));
	        WebElement pass = driver.findElement(By.id("j_password"));
	        AccountLogin acc = AccountLogin.getAcountAdminLogin();
	        user.sendKeys(acc.getName()) ;	        
	        pass.sendKeys(acc.getPass());	       	       
	        pass.submit();		 	        	    
	        try {
				Thread.sleep(5000);
			} catch (InterruptedException e) {				
				e.printStackTrace();
			}
	      	  
	        long end1 = System.currentTimeMillis() + 6000;
	         List<WebElement> elements =null;
	        
            String l="";
             while (System.currentTimeMillis() < end1) {
	        	 try{
	        		 elements = driver.findElements(By.tagName("div"));	        					        	 	       
	        		 if (elements.size() >0) {
	        			 break;
		             }
	        	 } catch (Exception x) {	        		 	        		
	        	 } 	        	 
	        	 //If results have been returned, the results are displayed in a drop down.	            
	        }
             
             try {
	               int a = elements.size();   
	          System.out.println("so hang: " + a); 	   
	        		 for( WebElement elem : elements ) {        			 
	        			 l+= elem.getText();
	        		 }
	        		  
             }catch (Exception x) {
            	 
            	 
             }	   
	      // System.out.println("title: "+ l); 
		 return l;
	 }
	 

}
