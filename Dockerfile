FROM docker:latest

RUN apk update && apk add libc6-compat
RUN mkdir /lib64 && ln -s /lib/libc.musl-x86_64.so.1 /lib64/ld-linux-x86-64.so.2

RUN curl https://bin.equinox.io/c/jewmwFCp7w9/convox-stable-linux-amd64.tgz | tar zvx -C /usr/local/bin



