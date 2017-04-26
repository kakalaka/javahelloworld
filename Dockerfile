FROM java:7

WORKDIR /home/root/javahelloworld
RUN mkdir bin
COPY HelloWorld.java .
ENV FOO bar
RUN javac HelloWorld.java
RUN touch test.txt
ENTRYPOINT ["java", "HelloWorld"]
