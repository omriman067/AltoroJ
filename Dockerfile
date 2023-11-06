FROM tomcat:7
USER root

ADD https://github.com/Gilc83/AltoroJ/raw/AltoroJ-3.4/release/root.war /usr/local/tomcat/webapps
EXPOSE 8080

CMD /usr/local/tomcat/bin/catalina.sh run
