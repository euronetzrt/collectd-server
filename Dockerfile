FROM alpine:3.10

LABEL org="Euronet Zrt."
LABEL maintainer="Richard Kojedzinszky <kojedzinszky.richard@euronetrt.hu>"

RUN apk --no-cache add collectd collectd-network collectd-rrdtool

EXPOSE 25826/udp

ADD assets /

USER 25826

CMD ["collectd", "-f"]
