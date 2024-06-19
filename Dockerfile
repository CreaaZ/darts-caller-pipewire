ARG REF

FROM lbormann/darts-caller:${REF}

RUN apt update && \
    apt install -y pipewire-alsa pipewire && \
    rm -rf /var/lib/apt/lists/*