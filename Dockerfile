FROM docker:latest

RUN apk --update add 'git' 'openssh' 'py-pip' 'curl'

# Alpine linux uses musl instead of glibc, so you need this package to run Go binaries
RUN apk --update add 'libc6-compat'

# install docker-compose and awscli from pip
RUN pip install 'docker-compose' 'awscli'

# install convox
RUN curl https://bin.equinox.io/c/jewmwFCp7w9/convox-stable-linux-amd64.tgz | tar zvx -C /usr/local/bin
