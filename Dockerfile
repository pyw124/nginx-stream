FROM nginx
COPY nginx_stream.conf /etc/nginx/nginx.conf
ARG LOCAL_PORT
ARG PUBLIC_PORT
RUN sed -i "s/LOCAL_PORT/${LOCAL_PORT}/g" /etc/nginx/nginx.conf
RUN sed -i "s/PUBLIC_PORT/${PUBLIC_PORT}/g" /etc/nginx/nginx.conf