ARG BUILD_FROM
FROM $BUILD_FROM
WORKDIR /
RUN apk update --no-cache \
	&& apk add git go \
	&& git clone https://github.com/klumw/gqmqtt /usr/src/gqmqtt \
	&& cd /usr/src/gqmqtt \
	&& go build \
	&& cp gqmqtt /usr/bin/ \
	&& cd / \
	&& rm -rf /usr/src/gqmqtt \
	&& apk rm git go

COPY run.sh /
RUN chmod a+x /run.sh

CMD ["/run.sh"]
