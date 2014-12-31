This to introduce how to cearte juzu applicaiton for eXoPlatform 4

mvn archetype:generate -s settings.xml 

697: remote -> org.juzu:juzu-archetype (-)

Choose a number or apply filter (format: [groupId:]artifactId, case sensitive contains): 318: 697
Choose org.juzu:juzu-archetype version: 

30: 0.6.0

Define value for property 'groupId': : exoweb
Define value for property 'artifactId': : exoweb
Define value for property 'version':  1.0-SNAPSHOT: : 
Define value for property 'package':  exoweb: : 
[INFO] Using property: juzuInject = guice
[INFO] Using property: juzuServer = tomcat
Confirm properties configuration:
groupId: exoweb
artifactId: exoweb
version: 1.0-SNAPSHOT
package: exoweb
juzuInject: guice
juzuServer: tomcat
 Y: : Y

in file: pom.xml
change <packaging>jar</packaging> 
to <packaging>war</packaging>
add
<dependency>
      <groupId>org.juzu</groupId>
      <artifactId>juzu-plugins-portlet</artifactId>
      <version>0.6.0</version>
      <scope>provided</scope>
 </dependency>

fix scope of all dependency 
<scope>provided</scope>

in file : package-info.java
add  
@juzu.plugin.portlet.Portlet


in file: portlet.xml

add  <keywords>exoweb</keywords>
to 
<portlet-info>
       <title>Sample Application</title>
       <keywords>exoweb</keywords>
</portlet-info>

fix <portlet-class>exoweb.ExowebPortlet</portlet-class>
note pacakge name and class name = package name uper first character + Portlet



mvn clean install -DskipTests
deploy exoweb.war 
