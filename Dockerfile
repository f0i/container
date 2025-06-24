FROM mcr.microsoft.com/devcontainers/typescript-node

WORKDIR /home/node
COPY setup /setup

USER node

RUN USER=node /setup/sshd.sh
RUN /setup/nvim.sh
RUN /setup/bash.sh
#RUN USER=node /setup/docker.sh
#RUN /setup/php.sh
#RUN /setup/icp.sh
#RUN /setup/rust.sh

CMD [ "sleep", "20000" ]
