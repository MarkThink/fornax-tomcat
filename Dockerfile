FORM docker-registry.caicloudprivatetest.com/caicloud/java:7

ENV CATALINA_HOME /usr/local/tomcat
ENV PATH $CATALINA_HOME/bin:$PATH

ADD apache-tomcat-8.5.3.tar.gz /tmp
RUN mkdir -p "$CATALINA_HOME" && cp -r /tmp/apache-tomcat-8.5.3/* "$CATALINA_HOME"

ADD test.war "$CATALINA_HOME/webapps"

WORKDIR $CATALINA_HOME

EXPOSE 8080

CMD ["catalina.sh", "run"]

