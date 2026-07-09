FROM nginx:1.30-alpine

USER root
WORKDIR /usr/share/nginx/html

RUN rm ./*.html

COPY nginx.conf /etc/nginx/conf.d/default.conf

COPY ./autoinstall.yaml ./autoinstall.yaml
COPY ./background.png ./background.png
COPY ./grub ./grub
COPY ./00-background ./00-background
COPY ./dump-doc.pdf ./dump-doc.pdf
COPY ./dump.sh ./dump.sh
COPY ./stumper/dump.sh ./stumper/dump.sh
COPY ./stumper/alpine-answers ./stumper/alpine-answers
COPY ./stumper/setup-wifi.sh ./stumper/setup-wifi.sh

EXPOSE 80/tcp

CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
