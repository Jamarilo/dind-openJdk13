From adoptopenjdk/openjdk12 AS build
From docker:stable

Copy --from=build /opt/java/openjdk /opt/java/openjdk
ENV JAVA_HOME=/opt/java/openjdk \
    PATH="/opt/java/openjdk/bin:$PATH"
CMD ["jshell"]