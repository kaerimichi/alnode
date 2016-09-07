# Alnode

![](https://images.microbadger.com/badges/image/kaerimichi/alnode.svg)

Alnode is a lightweight Docker image for building [Node] applications based on [Alpine Linux] (edge).

### What is Alpine Linux

Alpine Linux is a Linux distribution built around musl libc and BusyBox. The image is only 5 MB in size and has access to a package repository that is much more complete than other BusyBox based images. This makes Alpine Linux a great image base for utilities and even production applications.

### Usage

Build the image:

```sh
$ docker build -t alnode .
```

Or pull it from Docker Hub:

```sh
$ docker pull kaerimichi/alnode
```

Your project should be ready to launch with `npm start`. All you have to do is to run a container:

```sh
$ docker run -it --rm --name my-app alnode
```

The application should start attached to the terminal. But in a more real-life scenario, you can use the commands below to:

- Get the latest image version from Docker Hub
- Run a new container as a daemon
- Map the application directory
- Map the local port
- Set up a virtual host (to use with a [Nginx Proxy], for example)

```sh
$ docker pull kaerimichi/alnode
$ docker run -d --name [my-app-name] -v [my-app-path]:/app -p [my-local-port]:80 -v VIRTUAL_HOST='my-app-domain.com' kaerimichi/alnode
```

For production environments, you may also want to make good use of [Docker restart policies] with the last command above.

[Node]: <https://nodejs.org>
[Alpine Linux]: <https://alpinelinux.org>
[Nginx Proxy]: <https://hub.docker.com/r/jwilder/nginx-proxy>
[Docker restart policies]: <https://docs.docker.com/engine/reference/run/#restart-policies-restart>
