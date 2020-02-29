FROM adoptopenjdk/openjdk11-openj9:jdk-11.0.1.13-alpine-slim
COPY build/libs/micronaut-memory-leak-*-all.jar micronaut-memory-leak.jar
ENV JAVA_TOOL_OPTIONS -agentlib:jdwp=transport=dt_socket,address=*:5005,server=y,suspend=n
CMD java -Dcom.sun.management.jmxremote -noverify ${JAVA_OPTS} -Xmx50m -Dio.netty.leakDetection.level=paranoid -jar micronaut-memory-leak.jar
