FROM nginx:1.24.0
COPY ./index.html /usr/share/nginx/html/index.html

CMD ["nginx", "-g", "daemon off;"]
