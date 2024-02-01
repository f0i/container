FROM mcr.microsoft.com/devcontainers/typescript-node
 
WORKDIR /home/node
COPY setup /setup

USER node

RUN /setup/nvim.sh
RUN /setup/icp.sh
 
CMD [ "sleep", "20000" ]
