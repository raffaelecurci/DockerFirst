FROM store/oracle/jdk:11
COPY src DockerFirst
WORKDIR DockerFirst
RUN mkdir -p bin
RUN javac -d bin ./it/cr/Main.java
WORKDIR bin
CMD ["java","it.cr.Main"]