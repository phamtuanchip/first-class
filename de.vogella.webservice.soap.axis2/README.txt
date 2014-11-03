axis SOAP wsdl
http://localhost:8080/de.vogella.webservice.soap.axis2/axis2-admin/
admin
axis2
http://localhost:8080/de.vogella.webservice.soap.axis2/services/RandomNumber?wsdl


WSDL 
http://localhost:8080/de.vogella.webservice.soap.axis2/services/Version/getVersion
REST
http://localhost:8080/de.vogella.webservice.soap.axis2/rest/Version/getVersion

How to enable REST

By default REST is disabled in Axis 2. We need to enable it. We need to go to the following folder. Assuming that Business Objects and TomCat is installed on C: drive and you have 64 bit operating system. if you have 32 bit operating system then it will be like

 

1.     C:\Program Files\Business Objects\Tomcat55\webapps\dswsbobje\WEB-INF\conf              (for 32 Bit OS)

2.     C:\Program Files (x86)\Business Objects\Tomcat55\webapps\dswsbobje\WEB-INF\conf         (for 64 Bit OS)

3.     There is a file with the name axis2.xml

4.     This file is an XML File and contains many parameteres as well as many other things.

5.     Copy and paste this file with a different name to keep one original copy of the file as a backup.

6.     Open the axis2.xml file in Notepad or 'XML Editor' to edit

7.     Find out the REST word

8.     You will see a line like this

<parameter name="disableREST" locked="true">true</parameter>

We need to replace' true' with 'false' to enable REST, and after the changing that line will look like following

<parameter name="disableREST" locked="true">false</parameter>

9.     Now save the file and restart the web server or to make it simple restart your computer if Web server is installed on your local computer. And most probably your live office will be working fine.