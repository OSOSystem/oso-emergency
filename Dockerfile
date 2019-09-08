FROM openjdk:8u212-jre-alpine3.9
COPY ./build/libs/*.jar oso-emergency.jar

ENV DB_NAME oso-emergency
ENV DB_URL jdbc:postgresql://postgres:5432/${DB_NAME}?autoReconnect=true&useUnicode=true&characterEncoding=UTF-8&allowMultiQueries=true&useSSL=false
ENV DB_USER developer
ENV DB_PASSWORD ososystem

EXPOSE 8080

ENTRYPOINT ["java", \
"-Dspring.datasource.url=${DB_URL}", \
"-Dspring.datasource.username=${DB_USER}", \
"-Dspring.datasource.password=${DB_PASSWORD}", \
"-agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=8000", \
"-jar", \
"oso-backend.jar"]