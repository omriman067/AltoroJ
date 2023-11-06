FROM tomcat:9
USER root

ADD https://github.com/Gilc83/AltoroJ/raw/AltoroJ-3.4/release/altoromutual.war /usr/local/tomcat/webapps
RUN rm -rf /usr/local/tomcat/webapps/ROOT
RUN mv /usr/local/tomcat/webapps/altoromutual.war /usr/local/tomcat/webapps/ROOT.war
EXPOSE 8080

CMD /usr/local/tomcat/bin/catalina.sh run
