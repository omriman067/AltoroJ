FROM tomcat:7
USER root

ADD https://github.com/Gilc83/AltoroJ/raw/AltoroJ-3.4/release/altoromutual.war /usr/local/tomcat/webapps
RUN rmdir /usr/local/tomcat/webapps/root
RUN mv altoromutual.war root.war
EXPOSE 8080

CMD /usr/local/tomcat/bin/catalina.sh run
