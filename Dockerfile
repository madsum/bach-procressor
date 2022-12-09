FROM eclipse-temurin:17-jre-alpine
RUN mkdir /opt/batch-processor \
    && mkdir /opt/batch-processor/data
COPY ./target/batch-processor-1.0-SNAPSHOT-jar-with-dependencies.jar /opt/batch-processor
WORKDIR /opt/batch-processor
CMD ["java", "-jar", "batch-processor-1.0-SNAPSHOT-jar-with-dependencies.jar"]