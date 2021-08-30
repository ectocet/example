FROM nginx:alpine

ARG NAME

COPY www /usr/share/nginx/html

RUN sed -i -- "s/{{name}}/$NAME/g" /usr/share/nginx/html/index.html

EXPOSE 80
