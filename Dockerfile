FROM java:8

ENV JAVA_HOME /usr/bin/java

WORKDIR /usr/src/app

COPY src src
RUN mkdir bin && javac -d bin src/HelloWorld.java

ENTRYPOINT ["java", "-cp", "bin", "HelloWorld"]

#test
