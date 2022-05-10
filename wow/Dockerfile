FROM openjdk:8
LABEL maintainer="com.hqz.wow"
ADD target/wow-0.0.1-SNAPSHOT.jar wow.jar
VOLUME "/home/ubuntu/logs"
ENTRYPOINT ["java", "-jar","wow", "-Xmx512m", ">/home/ubuntu/logs/spring.log 2>&1 &"]