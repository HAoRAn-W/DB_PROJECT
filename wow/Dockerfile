FROM openjdk:8
LABEL maintainer="com.hqz.wow"
ADD target/wow-0.0.1-SNAPSHOT.jar wow.jar
ENTRYPOINT ["java", "-jar","wow.jar", "-Xmx512m"]