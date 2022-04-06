FROM adoptopenjdk:11-jre-hotspot

WORKDIR /app

RUN curl -O https://ci.lucko.me/job/bytebin/lastSuccessfulBuild/artifact/target/bytebin.jar

ADD config.json /app/config.json

EXPOSE 8080

CMD ["java", "-jar", "bytebin.jar"]