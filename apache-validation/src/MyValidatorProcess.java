import java.io.InputStream;

import org.apache.commons.validator.Validator;
import org.apache.commons.validator.ValidatorResources;


public class MyValidatorProcess {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// load the validator xml files
		InputStream in = getClass().getResourceAsStream("validator.xml");

		// create a ValidatorResources
		ValidatorResources resources = new ValidatorResources();

		// and load resources in
		ValidatorResourcesInitializer.initialize(resources, in);

		// now create the Validator
		Validator validator = new Validator(resources, "myFormBean");
		validator.addResource(Validator.BEAN_KEY, bean);

	}

}
