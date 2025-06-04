FROM nginx:latest
COPY ./index.html /usr/share/nginx/html/index.html
COPY ./hi.jpeg /usr/share/nginx/html/hi.jpeg
