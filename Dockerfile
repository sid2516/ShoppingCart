# Use an official Tomcat runtime as a base image
FROM tomcat:8.0.20-jre8


#Copy your WAR file into the Tomcat webapps directory
COPY target/shopieasy.war /usr/local/tomcat/webapps/ROOT.war

# Expose the default Tomcat port (8080) for external access
EXPOSE 8080

# Start Tomcat when the container launches
CMD ["catalina.sh", "run"]
