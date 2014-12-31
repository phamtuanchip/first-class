This to introduce how to cearte juzu applicaiton for eXo Platform 4

mvn archetype:generate -s settings.xml 

316: remote -> org.apache.maven.archetypes:maven-archetype-portlet (An archetype which contains a sample JSR-268 Portlet.)

Choose a number or apply filter (format: [groupId:]artifactId, case sensitive contains): 318: 316
Choose org.apache.maven.archetypes:maven-archetype-portlet version: 

3: 1.0.1

Define value for property 'groupId': : portletweb
Define value for property 'artifactId': : portletweb
Define value for property 'version':  1.0-SNAPSHOT: : 
Define value for property 'package':  portletweb: : 
Confirm properties configuration:
groupId: portletweb
artifactId: portletweb
version: 1.0-SNAPSHOT
package: portletweb
 Y: : Y


add:  <keywords>portletweb</keywords>
to: 
<portlet-info>
       <title>Sample Application</title>
       <keywords>portletweb</keywords>
</portlet-info>

fix class name of potlet
<portlet-class>portletweb.MyPortlet</portlet-class>
to 
in file: portlet.xml

mvn clean install
deploy portletweb.war 