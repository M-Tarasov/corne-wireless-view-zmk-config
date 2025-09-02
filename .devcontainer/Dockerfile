FROM docker.io/zmkfirmware/zmk-dev-arm:3.5

ARG USERNAME=builder
ARG USER_UID=1001
ARG USER_GID=$USER_UID

RUN groupadd --gid $USER_GID $USERNAME \
    && useradd --uid $USER_UID --gid $USER_GID -m $USERNAME

COPY .bashrc tmp
RUN mv /tmp/.bashrc ~/.bashrc
USER $USERNAME
