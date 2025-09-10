FROM debian:latest
ENV DEBIAN_FRONTEND noninteractive
RUN apt update && apt install -y \
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
&& rm -rf /var/lib/apt/lists/*
WORKDIR /root
ENTRYPOINT ["/usr/bin/tmate"]
CMD ["-F"]
