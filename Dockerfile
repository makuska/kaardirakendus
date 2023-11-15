FROM eclipse-temurin:17-jdk-alpine

COPY /backend/target/*.jar app.jar

#RUN MKDIR -p /data && CHMOD 744 /data

ENTRYPOINT ["java","-jar","/app.jar"]

EXPOSE 8080

## build image
# docker build -t saskia02/kaardirakendus .
# or docker-compose build
## run image
# WITH DB: docker-compose up (-d <- for background)
# ONLY BE: docker run -p 8080:8080 saskia02/kaardirakendus
## push image
# docker tag saskia02/kaardirakendus:latest saskia02/kaardirakendus:latest
# docker push saskia02/kaardirakendus