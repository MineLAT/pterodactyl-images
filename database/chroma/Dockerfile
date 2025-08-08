FROM        --platform=$TARGETOS/$TARGETARCH ghcr.io/chroma-core/chroma:latest

LABEL       author="Rubén Chavarría" maintainer="ruben.chavarria@saicone.com"

LABEL       org.opencontainers.image.source="https://github.com/MineLAT/pterodactyl-images"
LABEL       org.opencontainers.image.licenses="CC0-1.0"

RUN         useradd -m -d /home/container container

USER        container
ENV         USER=container HOME=/home/container
WORKDIR     /home/container

COPY        ./../entrypoint.sh /entrypoint.sh
CMD         [ "/bin/bash", "/entrypoint.sh" ]