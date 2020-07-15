FROM openjdk:11.0.6-jre-slim
ENV APP_PATH="/${APP_NAME}.jar" \
    SERVER_PORT=8081
EXPOSE $SERVER_PORT
COPY wrapper.sh /wrapper.sh
RUN chmod 555 /wrapper.sh
ADD ./target/stock-service-0.0.1.jar stock-service-0.0.1.jar
ENTRYPOINT ["sh", "/wrapper.sh"]
