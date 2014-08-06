import java.awt.Color;


import com.smartxls.*;



public class DrawChart {

	/**
	 * @param args
	 */
	static int maxRows =0;
	static int maxColumns =0;
	static String fileinput ="D:\\my_Data\\TrainingSchedule.xls"; 
	static String fileinput_ ="D:\\my_Data\\TrainingSchedule.xlsx"; 
	static String fileinput_0 ="TrainingSchedule.xlsx"; 
	public static void main(String[] args) {
		drawChart();

	}
	

	static public  void  getmaxRows_maxColumn() {
		
		
	}
	
	public static void drawChart() {
		
		WorkBook wk = new WorkBook();
		try {
			//wk.read(fileinput);
			wk.readXLSX(fileinput_0);
			//wk.read("chart2.xls");
		   int k=wk.getNumSheets();
		 System.out.println("So sheet la la : " + k);	
		String  sh =  wk.getSheetName(0);
		System.out.println("So sheet name 0  " + sh);
		
			
	short st= 	wk.SheetStateShown ;
	System.out.println("So sheet-----------------------------   " + st);
	wk.editCopyRight();
	 //ChartShape chart = wk.addChart(200, 50, 600, 700);
	wk.insertSheets(1, 1);
	ChartShape chart = wk.addChartSheet(1);//add chart
	String hh ="" +sh+ "!$a$1:$F$6" ;
	
	chart.setLinkRange("Sheet1!$a$1:$c$7", false);
	wk.setSheetName(1, "ChartSheet_0");
	
	chart.setChartType(ChartShape.Pie);
	chart.setAxisTitle(ChartShape.XAxis, 0, "thoi gian");
	chart.setAxisTitle(ChartShape.YAxis, 0, "So luong da ban ");

	ChartFormat chartFormat = chart.getPlotFormat();
	chartFormat.setSolid();
	chartFormat.setForeColor(Color.red.getRGB());
	//chart.setPlotFormat(chartFormat);
	
	chart.setTitle("My Chart");
	wk.writeXLSX("chart.xlsx");
		} catch (Exception e) {
	
			e.printStackTrace();
		}
		
		
	}
}
