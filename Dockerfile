FROM fedora:27

ARG NODE_VERSION=v8.9.1

RUN dnf update --assumeyes && \
    dnf install --assumeyes curl && \
    dnf install --assumeyes git && \
    dnf clean all

RUN curl --silent --location https://rpm.nodesource.com/setup_9.x | bash - && \
    dnf install -y nodejs && \
    npm install --global gulp && \
    npm install --global ts-node && \
    npm install --global typescript

