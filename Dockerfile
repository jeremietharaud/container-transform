FROM python:alpine3.8

COPY . /container-transform

RUN \
	cd /container-transform && \
	python /container-transform/setup.py install

WORKDIR /data
ENTRYPOINT ["/usr/local/bin/container-transform"]
