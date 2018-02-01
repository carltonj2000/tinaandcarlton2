FROM ubuntu:17.04
EXPOSE 8080

COPY caddy /usr/bin/caddy

RUN mkdir -p /html
COPY Caddyfile /etc/Caddyfile

WORKDIR /html

ENTRYPOINT ["/usr/bin/caddy"]
CMD ["--conf", "/etc/Caddyfile", "--log", "stdout"]
