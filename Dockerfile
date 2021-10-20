FROM adoptopenjdk/openjdk11:jdk-11.0.12_7-alpine-slim

ENV SPM_VER 1.7.6
RUN apk --update add less unzip wget nano bash && \
    rm -rf /var/lib/apt/lists/* && \
    rm /var/cache/apk/*
    
RUN wget https://github.com/rnentjes/simple-password-manager/releases/download/$SPM_VER/spm-$SPM_VER.zip && \
	unzip spm-$SPM_VER.zip && \
	rm -rf spm-$SPM_VER.zip

ENTRYPOINT ["/bin/bash", "-c", "java -jar ./server-$SPM_VER.jar"]
