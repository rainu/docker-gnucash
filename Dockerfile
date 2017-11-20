FROM ubuntu:17.10 
MAINTAINER rainu <rainu@raysha.de>

ENV DEBIAN_FRONTEND noninteractive 
RUN apt-get update && apt-get install -y \
  gnucash \
  dbus-x11 \
  libdbi1 \
  libdbd-sqlite3 \
  libdbd-pgsql \
  libdbd-mysql \
&& rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/gnucash", "--logto", "stderr"]
