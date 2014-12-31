package pt.nvt;
import java.io.File;
import java.util.List;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.transform.OutputKeys;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;

import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
public class XML_Paser_Object {

	/**
	 * @param args
	 */
	public static String dic="D:\\OneDrive\\DALI\\UnicePF\\gen\\";
	public static String xmlNames = "quadroA730.xml quadroB730.xml quadroC730.xml quadroD730.xml quadroE730.xml quadroF730.xml quadroG730.xml quadroI730.xml quadroPL730.xml"; 
	public static String jspNames = "quadroA.jsp quadroB.jsp quadroC.jsp quadroD.jsp quadroE.jsp quadroF.jsp quadroG.jsp quadroI.jsp quadroPL.jsp";
	public static void main(String[] args) {
		
		getDom(xmlNames.split(" "));
		 
		//getJsp(jspNames.split(" "));
	}

	static void getJsp(String[] fileNames) {
		try {
			HSSFSheet sh          = ConvertExcelToModel.getHSSFSheet(ConvertExcelToModel.PATH, 3);
			List<RowModel> lsrows = ConvertExcelToModel.getList(sh);
			for(String fileName : fileNames) {
				String chr = fileName.substring(6,7);
				String checkChar = chr+"D";
				if(chr.equalsIgnoreCase("P")) checkChar =  fileName.substring(6,8);
				File jspFile = new File(dic + fileName);
				if(jspFile.exists()) {
					DocumentBuilderFactory dbFactory = DocumentBuilderFactory.newInstance();
					DocumentBuilder dBuilder = dbFactory.newDocumentBuilder();
					Document doc = dBuilder.parse(jspFile);
					NodeList ls =  doc.getElementsByTagName("label");
					//---------------------------------------- Begin mapping data------- 
					for(int i=0;i<ls.getLength();i++  ){
						Node n = ls.item(i);
						if (n.getNodeType() == Node.ELEMENT_NODE) {
							Element element = (Element) n;
							String id = element.getAttribute("for");
							System.out.println(id);
							if(chr.equalsIgnoreCase("p")) chr = checkChar;
							for(RowModel rd : lsrows) {
								if(rd.Column0_Ex_data.contains(checkChar)) {
									if((("Quadro" + chr)+ Integer.parseInt(rd.rowIndex) + "_" + Integer.parseInt(rd.columnIndex)).equals(id)) {
										System.out.print(rd.Column0_Ex_data);	
										System.out.println( " Row= " +rd.rowIndex +" Col = "+rd.columnIndex +" value = "+ rd.Column1_Ex_data );  
										//rd.Column1_Ex_data = rd.Column1_Ex_data.replace("'", "&#x2019;");
										element.setTextContent(rd.Column1_Ex_data);
									}
								}

							}
						}
						TransformerFactory transformerFactory = TransformerFactory.newInstance();
						Transformer transformer = transformerFactory.newTransformer();
						DOMSource source = new DOMSource(doc);
						String name=getOutPut_jsp(chr);
						File f = new File(name);
						if(f.exists()) f.delete();
						StreamResult result = new StreamResult(new File(name));
						transformer.transform(source, result);
					}

				} 



			}
		} catch (Exception x) {

			x.printStackTrace();
		}
	}

	static void getDom(String[] fileNames) {
		try {
			//fileName = quadroA730.xml
			HSSFSheet sh          = ConvertExcelToModel.getHSSFSheet(ConvertExcelToModel.PATH, 3);

			List<RowModel> lsrows = ConvertExcelToModel.getList(sh);

			for(String fileName : fileNames) {
				String chr = fileName.substring(6,7);
				String checkChar = chr+"D";
				if(chr.equalsIgnoreCase("P")) checkChar =  fileName.substring(6,8);
				File fXmlFile = new File(dic + fileName);
				if(fXmlFile.exists()) {
					DocumentBuilderFactory dbFactory = DocumentBuilderFactory.newInstance();
					DocumentBuilder dBuilder = dbFactory.newDocumentBuilder();
					Document doc = dBuilder.parse(fXmlFile);
					NodeList ls =  doc.getElementsByTagName("TipologiaCampoQuadro");
					//---------------------------------------- Begin mapping data------- 
					for(int i=0;i<ls.getLength();i++  ){
						Node n = ls.item(i);
						if (n.getNodeType() == Node.ELEMENT_NODE) {
							Element element = (Element) n;
							String rowID=  element.getAttribute("NumeroRiga");
							String columID = element.getAttribute("NumeroColonna");
							NodeList l1 = element.getElementsByTagName("DescrizioneCampo");
							Node mynode = l1.item(0);
							Element myel =(Element) mynode;
							for(RowModel rd : lsrows) {
								if(rd.Column0_Ex_data.contains(checkChar)) {
									if(rowID.equals(rd.rowIndex)  && columID.equals(rd.columnIndex)) {
										System.out.print(rd.Column0_Ex_data);	
										System.out.println( " Row= " +rd.rowIndex +" Col = "+rd.columnIndex +" value = "+ rd.Column1_Ex_data );  
										//rd.Column1_Ex_data = rd.Column1_Ex_data.replace("'", "&#x2019;");
										myel.setTextContent(rd.Column1_Ex_data);
									}
								}

							}
						}
						TransformerFactory transformerFactory = TransformerFactory.newInstance();
						Transformer transformer = transformerFactory.newTransformer();
						//transformer.setOutputProperty(OutputKeys.INDENT, "yes");
						//transformer.setOutputProperty(OutputKeys.ENCODING, "");
						DOMSource source = new DOMSource(doc);
						String name=getOutPut_xml(chr);
						File f = new File(name);
						if(f.exists()) f.delete();
						StreamResult result = new StreamResult(new File(name));
						transformer.transform(source, result);
					}

				} 



			}
		} catch (Exception x) {

			x.printStackTrace();
		}
	}

	static	String getOutPut_xml(String chr) {
		return dic+"out\\quadro"+chr+ ".xml"; 
	}
	
	static	String getOutPut_jsp(String chr) {
		return dic+"out\\quadro"+chr+ ".jsp"; 
	}

}
