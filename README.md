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

Your application should have an entrypoint command/script.

For production environments, you may also want to make good use of [Docker restart policies] with the last command above.

[Node]: <https://nodejs.org>
[Alpine Linux]: <https://alpinelinux.org>
[Nginx Proxy]: <https://hub.docker.com/r/jwilder/nginx-proxy>
[Docker restart policies]: <https://docs.docker.com/engine/reference/run/#restart-policies-restart>
