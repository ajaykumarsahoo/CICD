FROM jboss/wildfly
ADD samplewar/target/samplewar.war /opt/jboss/wildfly/standalone/deployments/
RUN /opt/jboss/wildfly/bin/add-user.sh admin admin --silent
CMD ["/opt/jboss/wildfly/bin/standalone.sh", "-b" , "0.0.0.0", "-bmanagment" , "0.0.0.0"]