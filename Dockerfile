FROM nginx
RUN mkdir -p /usr/share/nginx/html
COPY static-html-directory /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
