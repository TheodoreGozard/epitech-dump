FROM nginx:1.26.2

RUN rm /usr/share/nginx/html/*.html

COPY autoinstall.yaml /usr/share/nginx/html/autoinstall.yaml
COPY ks.cfg /usr/share/nginx/html/ks.cfg
COPY fedora-dump.sh /usr/share/nginx/html/fedora-dump.sh
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY background.png /usr/share/nginx/html/background.png
COPY grub /usr/share/nginx/html/grub
COPY 00-background /usr/share/nginx/html/00-background
COPY dump-doc.pdf /usr/share/nginx/html/dump-doc.pdf

EXPOSE 80/tcp

CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
