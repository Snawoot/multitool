FROM debian:latest
ENV DEBIAN_FRONTEND noninteractive
RUN apt update && apt install -y \
	tar \
	tmate \
	curl \
	wget \
	iputils-ping \
	traceroute \
	dnsutils \
	busybox \
	netcat-openbsd \
	make \
	build-essential \
	git \
	golang \
	python3 \
	procps \
	htop \
	vim \
	strace \
	lsof \
	rlwrap \
	less \
	tcpdump \
	xxd \
	openssh-client \
	iproute2 \
	mtr \
&& rm -rf /var/lib/apt/lists/* \
&& curl -sSf https://sshx.io/get | sh
WORKDIR /root
CMD ["/usr/local/bin/sshx"]
