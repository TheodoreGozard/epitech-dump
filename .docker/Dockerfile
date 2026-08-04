FROM nginx:1.30-alpine

USER root
WORKDIR /usr/share/nginx/html

RUN rm ./*.html

COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80/tcp

CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
