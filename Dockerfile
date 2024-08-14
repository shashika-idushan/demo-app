# Use an official Tomcat image as the base image
FROM tomcat:10.1-jdk21

# Set the environment variable for the Tomcat application directory
ENV CATALINA_HOME /usr/local/tomcat
ENV PATH $CATALINA_HOME/bin:$PATH

# Copy the WAR file from the target directory to the webapps directory of Tomcat
COPY target/demo-0.0.1-SNAPSHOT.war $CATALINA_HOME/webapps/

# Expose the Tomcat port
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
