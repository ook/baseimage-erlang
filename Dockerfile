# Use phusion/baseimage as base image. To make your builds reproducible, make
# sure you lock down to a specific version, not to `latest`!
# See https://github.com/phusion/baseimage-docker/blob/master/Changelog.md for
# a list of version numbers.
FROM phusion/baseimage:0.10.1

# Use baseimage-docker's init system.
CMD ["/sbin/my_init"]

# ------------------------- baseimage-docker customization
ENV REFRESHED_AT=2018-07-26 \
    OTP_VERSION=21.0

ADD https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb /root/
RUN dpkg -i /root/erlang-solutions_1.0_all.deb && apt update && apt install -y --no-install-recommends esl-erlang=1:${OTP_VERSION} && \
    apt-get autoremove --purge && \
    rm /root/erlang-solutions_1.0_all.deb && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
