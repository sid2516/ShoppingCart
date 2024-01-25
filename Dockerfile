# Use the official Tomcat image as the base image
FROM tomcat:8-jre11

# Remove the default webapps folder
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your WAR file into the webapps directory
COPY target/shopieasy.war /usr/local/tomcat/webapps/ROOT.war

# Expose the port on which Tomcat will run
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
