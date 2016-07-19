A demo of PDF document generation using Apache FOP. Spring MVC is used for integration. There are examples that show how to convert to PDF from XML and Java Beans. XML, HTML and PDF views are rendered by chaining the view resolvers.

This project also demonstrates how to use Xtensible Style Sheets for transformation (XSLT). The simple view example shows the bare minimum exported file. The rich view example shows how to apply styling (this is a work in progress). 

FOP is a good alternative to iText for PDF generation (the latest version of iText is only free for open source/non-commercial projects).


Note for java 1.8 and tomcat 8, need to use spring 3.2.16.RELEASE