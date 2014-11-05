package skeleton;

import skeleton.Belly1;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class Stepdefs {
    @Given("^I have (\\d+) cukes in my belly$")
    public void I_have_cukes_in_my_belly(int cukes) throws Throwable {
    	System.out.println("wcukes ============ "+ cukes);
        Belly1 belly = new Belly1();
        belly.eat(cukes);
    }
    @When("^I wait (\\d+) hour$")
    public void i_wait_hour(int arg1) throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        //throw new PendingException();
    	System.out.println("wait for ============ "+ arg1);
    }
    @Then("^my belly should (\\d+) growl$")
    public void my_belly_should_growl(int arg1) throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        //throw new PendingException();
    	System.out.println("my belly should grow ============ "+ arg1);
    }
}
