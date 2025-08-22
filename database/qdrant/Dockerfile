FROM        --platform=$TARGETOS/$TARGETARCH qdrant/qdrant:latest

LABEL       author="Rubén Chavarría" maintainer="ruben.chavarria@saicone.com"

LABEL       org.opencontainers.image.source="https://github.com/MineLAT/pterodactyl-images"
LABEL       org.opencontainers.image.licenses="CC0-1.0"

RUN         useradd -m -d /home/container container

WORKDIR     /home/container

COPY        ./entrypoint.sh /entrypoint.sh
RUN         chmod +x /entrypoint.sh
CMD         ["/entrypoint.sh"]