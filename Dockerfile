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
&& rm -rf /var/lib/apt/lists/*
ENTRYPOINT ["/usr/bin/tmate"]
CMD ["-F"]
