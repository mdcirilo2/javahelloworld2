FROM java:7
MAINTAINER Docker Trainer <some@guy.com>
COPY src /home/root/javahelloworld/src
#COPY bin /home/root/javahelloworld/bin
WORKDIR /home/root/javahelloworld
RUN apt-get update
CMD ["echo","i"]
#RUN apt-get install  mysql-client-core-5.1
RUN mkdir bin
RUN javac -d bin src/HelloWorld.java
ENTRYPOINT ["java","-cp","bin","HelloWorld"]
#ENV JAVA_HOME /usr/bin/java
ENV FOO bar
