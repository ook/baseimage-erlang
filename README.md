# Erlang on Ubuntu via Baseimage-docker
This Dockerfile provides a full installation of erlang suite on Ubuntu 16.04 LTS (Xenial Xerus) via:
  * Phusion baseimage-docker (docker for those who RTFM)
  * Erlang Solutions (fine maintained erlang packages)

This permits a powerful image (ubuntu based) with latest packages and up to date Erlang versions.
Currently this repository use baseimage v0.10.1 and OTP 21.0

## Usage

Note that all the philosophy from baseimage-docker is kept untouched.
Please use the tag according to the version of OTP you want to use. If your version is missing, just open a PR.

## Licence

MIT, because I'm too shy to make it WTFPL
