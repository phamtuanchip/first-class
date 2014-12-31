import java.io.File;

public class FolderTraversar {
 
    /**
     * @param args
     */
    public static void main(String[] args) {
        // Folder that you want to traverse
        File inputFolder = new File("D:\\projects\\first-class\\java");
        traverse(inputFolder, "");
    }
 
    public static void traverse(File parentNode, String leftIndent) {
        if (parentNode.isDirectory()) {
            System.out.println(leftIndent + parentNode.getName());
 
            // Use left padding to create tree structure in the console output.
            leftIndent += "   ";
 
            File childNodes[] = parentNode.listFiles();
            for (File childNode : childNodes) {
                traverse(childNode, leftIndent);
            }
        } else {
            System.out.println(leftIndent + parentNode.getName());
        }
    }
 
}