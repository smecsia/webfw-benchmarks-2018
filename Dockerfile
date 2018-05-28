FROM sgrio/java-oracle:jdk_9 as builder

ADD src /src/src
ADD pom.xml /src/pom.xml
ADD mvnw /src/mvnw
ADD .mvn /src/.mvn

RUN set -ex && \
    cd /src && \
    ./mvnw package

FROM frolvlad/alpine-glibc:alpine-3.7

ENTRYPOINT ["/app/bin/run"]

COPY --from=0 /src/target/app /app