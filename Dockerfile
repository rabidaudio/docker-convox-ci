FROM docker:latest

RUN apk --update add 'git' 'openssh'

# Alpine linux uses musl instead of glibc, so you have to do some lib stuff to get Go binaries to run:
RUN apk --update add 'libc6-compat'
RUN mkdir /lib64 && ln -s /lib/libc.musl-x86_64.so.1 /lib64/ld-linux-x86-64.so.2

# install docker-compose and awscli from pip
RUN apk --update add 'py-pip' 'curl' && pip install 'docker-compose' 'awscli'

# install convox
RUN curl https://bin.equinox.io/c/jewmwFCp7w9/convox-stable-linux-amd64.tgz | tar zvx -C /usr/local/bin
