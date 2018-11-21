FROM openjdk:10-jre-slim
RUN apt-get update -y \
  && apt-get upgrade -y \
  && apt-get install -y --no-install-recommends wget \
  && apt-get clean \
  && mkdir -p /opt/nemtech/bin/ \
  && wget https://github.com/nemtech/nem2-camel/releases/download/v0.1.1/nem2-camel.jar -O /opt/nemtech/bin/nem2-camel.jar
ENTRYPOINT ["java", "-jar", "/opt/nemtech/bin/nem2-camel.jar"]
CMD ["--help"]
