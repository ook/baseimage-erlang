# Erlang on Ubuntu via Baseimage-docker

This Dockerfile provides a full installation of erlang suite on Ubuntu 16.04 LTS (Xenial Xerus) via:
  * Phusion baseimage-docker (docker for those who RTFM)
  * Erlang Solutions (fine maintained erlang packages)

This permits a powerful image (ubuntu based) with latest packages and up to date Erlang versions.
Currently this repository use baseimage v0.10.1 and OTP 21.0

## Usage

Note that all the philosophy from phusion/baseimage-docker is kept untouched. You shall read their README.md file.
This image tags match the version of OTP you want to use. If your version is missing, just open a PR.

Available pre-built images OTP versions (or check on [docker hub](https://hub.docker.com/r/ook99/baseimage-erlang/tags/)):
  * 21.0
  * 20.3.6
  * 19.3.6

In your `Dockerfile`, use baseimage-docker template. For instance, if you want OTP 21.0:

```
# Use phusion/baseimage as base image. To make your builds reproducible, make
# sure you lock down to a specific version, not to `latest`!
# See https://github.com/phusion/baseimage-docker/blob/master/Changelog.md for
# a list of version numbers.
FROM ook99/baseimage-erlang:21.0

# Use baseimage-docker's init system.
CMD ["/sbin/my_init"]

# ...put your own build instructions here...

# Clean up APT when done.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
```

You can run a shell into the image to see the possibilities via:

```
docker run --rm -t -i ook99/baseimage-erlang:21.0 /sbin/my_init -- bash -l
```

## Licence

MIT, because I'm too shy to make it WTFPL
