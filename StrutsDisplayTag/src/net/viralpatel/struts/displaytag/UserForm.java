package net.viralpatel.struts.displaytag;
 
import java.util.ArrayList;
 
public class UserForm extends org.apache.struts.action.ActionForm {
 
    private ArrayList<ForbesData> forbesList;
 
    public ArrayList<ForbesData> getForbesList() {
        return forbesList;
    }
 
    public void setForbesList(ArrayList<ForbesData> forbesList) {
        this.forbesList = forbesList;
    }
}