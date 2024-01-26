# Use an official Tomcat runtime as a base image
FROM tomcat:latest

# Remove the default Tomcat webapps to make space for your WAR file
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your WAR file into the Tomcat webapps directory
COPY target/shopieasy.war /usr/local/tomcat/webapps/

# Expose the default Tomcat port (8080) for external access
EXPOSE 8080

# Start Tomcat when the container launches
CMD ["catalina.sh", "run"]
