FROM debian:bullseye-slim
RUN apt update && apt install -y yaws=2.0.7* && \
  rm /etc/yaws/conf.d/* && \
  mkdir -p /var/www/yaws/cgi-bin
COPY ./localhost.conf /etc/yaws/conf.d/
EXPOSE 8080
ENTRYPOINT [ "/usr/bin/yaws", "-i" ]
