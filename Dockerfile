FROM java:8-jre
WORKDIR /app
ADD ./registry.jar registry.jar
CMD ["nohup",""java","-server", "-Xmx200m", "-jar", "/app/registry.jar","registry.txt &"]
EXPOSE 8761