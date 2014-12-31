package skeleton;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class Stepdefs1 {
	@Given("^User is logged in$")
	public void User_is_logged_in() throws Throwable {
	    // Express the Regexp above with the code you wish you had
	    //throw new PendingException();
	    System.out.println("User_is_logged_in ============ ");
	}
	 
	@Given("^User is on edit profile page$")
	public void User_is_on_edit_profile_page() throws Throwable {
	    // Express the Regexp above with the code you wish you had
	    //throw new PendingException();
		System.out.println("User_is_on_edit_profile_page ============ ");
	}
	 
	@When("^User presses Edit Password button$")
	public void User_presses_Edit_Password_button() throws Throwable {
	    // Express the Regexp above with the code you wish you had
	    //throw new PendingException();
		System.out.println("User_presses_Edit_Password_button ============ ");
	}
	 
	@When("^User enters \"([^\"]*)\" for new password and repeats \"([^\"]*)\" for new password confirmation$")
	public void User_enters_for_new_password_and_repeats_for_new_password_confirmation(String arg1, String arg2) throws Throwable {
	    // Express the Regexp above with the code you wish you had
	    //throw new PendingException();
	    System.out.println("User_enters_for_new_password_and_repeats_for_new_password_confirmation ============ "+ arg1+"arg2:"+arg2);
	}
	 
	@When("^User presses \"([^\"]*)\"$")
	public void User_presses(String arg1) throws Throwable {
	    // Express the Regexp above with the code you wish you had
	    //throw new PendingException();
		System.out.println("User_presses ============ "+ arg1);
	}
	 
	@Then("^User should see \"([^\"]*)\"$")
	public void User_should_see(String arg1) throws Throwable {
	    // Express the Regexp above with the code you wish you had
	    //throw new PendingException();
		System.out.println("User_should_see ============ "+ arg1);
	}
}
