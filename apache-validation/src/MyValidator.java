import org.apache.commons.validator.Field;
import org.apache.commons.validator.util.ValidatorUtils;

public class MyValidator {
    public static boolean validateContainsChar(Object bean, Field field) {

    	// first get the value of this bean property as a string
    	String val = ValidatorUtils.getValueAsString(bean, field.getProperty());

    	// now return true or false based on the presence of the '*' sign
    	return ((val.indexOf('*') == -1) ? false : true);
    }
}
