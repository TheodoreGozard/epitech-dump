FROM nginx:1.26.2

RUN rm /usr/share/nginx/html/*.html

COPY autoinstall.yaml /usr/share/nginx/html/autoinstall.yaml
COPY ks.cfg /usr/share/nginx/html/ks.cfg
COPY fedora-dump.sh /usr/share/nginx/html/fedora-dump.sh
COPY autoinstall.conf /etc/nginx/conf.d/default.conf

EXPOSE 80/tcp

CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
