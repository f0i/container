# Dev Container

Something similar to [Development Containers](https://containers.dev/) build with docker-compose and a few simple bash scripts.

## Install

Requires docker, docker-compose and some basic tools like git, bash, ssh, etc.

The commands `bin/dev` and `bin/path` should be somewhere in your PATH.

1. Assuming a project called `allkinds` in `~/projects/allkinds`
2. Clone this repo into the project root `cd ~/projects/allkinds/ ; git clone git@github.com:f0i/container`
3. Modify the `Dockerfile` to include the services and tools you need
4. Start the docker container using the `dev` command `dev allkinds start`
5. Connect to the container `dev allkinds` and start development
6. Enable port forwarding to the host `ports 3000 8080:80`,
   in this case port 3000 and 8080 of the host will be forwarded to port 3000 and 80 of the container

