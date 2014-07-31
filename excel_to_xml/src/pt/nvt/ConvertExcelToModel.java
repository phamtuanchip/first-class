package pt.nvt;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

public class ConvertExcelToModel {

	final static String PATH ="D:\\OneDrive\\DALI\\Specifiche_730_2014_Flat.xls";
	public static Set<String> setFirst = null;
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int column=0;
	HSSFSheet sh= 	getHSSFSheet(PATH, 3);
	System.out.println("Sheet Name" + sh.getSheetName());
	
	List<RowModel> ls = getList(sh);
	int b = ls.size() ;
	int bb= setFirst.size(); 
	//System.out.println( "Tong so  doi tuong : " + b+ ". so ky tu file :" + bb) ;
	RowModel rm = null;
	int a= sh.getPhysicalNumberOfRows();
	for (int i=0;i<30;i++) {
	 rm= ls.get(i);
	 String s= "chuoi : "+ rm.A_Z + ", " + rm.rowIndex + ", " + rm.columnIndex +",  ," + rm.Column0_Ex_data + "," + rm.Column1_Ex_data;
	 //System.out.println(s);
	//HSSFRow r=	sh.getRow(i);
	 //String value= r.getCell(column).getStringCellValue();	
	 //System.out.println("Rows " + i +  ". Column " +column+ ":"  + value);
	}
	
	//System.out.println("Chuong trinh co chay het ");
	
	}
	
	public static  List getRows(String filename, int sheetIndex) {
		List ls = new ArrayList();
		try {
			XSSFWorkbook workbook = null;
			FileOutputStream out = null;
			FileInputStream is = null;

			XSSFSheet sheet = null;
			// System.out.println("chuan bi tao file");
			is = new FileInputStream(filename);
			// System.out.println("Da lay file ");
			workbook = new XSSFWorkbook(is);
			// System.out.println("Da tao WorkBook");
			sheet = workbook.getSheetAt(sheetIndex);
			int rowsNumber = sheet.getPhysicalNumberOfRows();
			for(int i =0;i<rowsNumber;i++) {
			String s=	sheet.getRow(i).getCell(1).getRawValue();
			ls.add(s);
				
			}
			
		} catch (FileNotFoundException x) {
		return null;
		} catch (IOException x) {
		return null;
		}
	   
	   return null;
  }
	
	public static void reading(String path, int sheetIndex ) {
		try {

		FileInputStream file = new FileInputStream(path);
		HSSFWorkbook h = new HSSFWorkbook(file);
		//Get the workbook instance for XLS file
		 //System.out.println("da get okBook");
		HSSFSheet sh = h.getSheetAt(1);
		int a = sh.getPhysicalNumberOfRows();
		//System.out.println("rows " + a);
			
	    //Iterator<Row> rowIterator = sheet.iterator();
		//Iterator<Cell> cellIterator = row.cellIterator();
		}catch (Exception x) {
			x.printStackTrace();
		}
	}
	
	public static HSSFSheet getHSSFSheet(String pathFile,int indexSheet) {
		HSSFSheet sh = null;
		 try {

			FileInputStream file = new FileInputStream(pathFile);
			HSSFWorkbook h = new HSSFWorkbook(file);
			//h.w
			//Get the workbook instance for XLS file
			 //System.out.println("da get okBook");
			 sh = h.getSheetAt(indexSheet);
			int a = sh.getPhysicalNumberOfRows();
			//System.out.println("rows " + a);
				return sh;
		    //Iterator<Row> rowIterator = sheet.iterator();
	 		//Iterator<Cell> cellIterator = row.cellIterator();
			}catch (Exception x) {
				x.printStackTrace();
			}
		return sh;
	}
	public static List<RowModel> getList(HSSFSheet sh ) {
		setFirst = new HashSet<String>();
		RowModel rm=null;	
		ArrayList<RowModel> ls = new ArrayList<RowModel>();		
		if(sh!=null) {
			int a= sh.getPhysicalNumberOfRows();
			
		for(int i =0;i<a;i++){			
		 HSSFRow r=	sh.getRow(i);
		 HSSFCell c= r.getCell(0);
		 String ss =null;
		 String ss2="";
		 try {
		       String dd=c.getStringCellValue();		      
		       if(dd==null|| dd.trim().length() <=7 || dd.trim().length()>9) {continue ;}
			   // System.out.println(dd) ; 
			    ss=dd;	 
			    if(r.getCell(1).getCellType() == HSSFCell.CELL_TYPE_NUMERIC)
			    ss2 = r.getCell(1).getNumericCellValue() + "" ;
			    if(r.getCell(1).getCellType() == HSSFCell.CELL_TYPE_STRING)
			    ss2 = r.getCell(1).getStringCellValue();
			    rm= new RowModel();		 
			    rm.Column0_Ex_data = ss;
			    rm.Column1_Ex_data = ss2;
			    String sa = ss.substring(0, 1);
			    rm.A_Z = sa;
			    setFirst.add(sa);
			    sa= ss.substring(2,5);
			    rm.rowIndex = sa;
			    sa= ss.substring(5,8);
			   rm.columnIndex =sa;
			   ls.add(rm);    
		 }
		 catch( IllegalStateException  v) { 
			 //System.out.println("Nhay vao try catch ");
			 //v.printStackTrace();
			 //System.out.println("Nhay vao try catch ");
			 continue ;
		  }	
		  }
		 } 
		return ls;
	}


}
