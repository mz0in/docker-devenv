FROM node:19-alpine3.16
ARG WORKSPACE_DIR=/evidence-workspace 

RUN apk add --no-cache bash curl wget nano git && \
    apk add xdg-utils && \
    npm install -g degit && \
    mkdir -p ${WORKSPACE_DIR} && \
    mkdir -p /evidence-bin

COPY bootstrap.sh /evidence-bin/bootstrap.sh
WORKDIR ${WORKSPACE_DIR}

ENTRYPOINT [ "bash", "/evidence-bin/bootstrap.sh" ]