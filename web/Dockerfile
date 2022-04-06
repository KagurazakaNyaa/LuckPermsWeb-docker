FROM node:lts AS build

WORKDIR /app

RUN git clone --recursive https://github.com/lucko/LuckPermsWeb.git --depth 1 /app

RUN npm install

COPY config.json /app/config.json

RUN npm run build

FROM nginx:stable

COPY luckperms.conf.template /etc/nginx/templates
COPY 40-change-backend-url.sh /docker-entrypoint.d
COPY --from=build /app/dist /var/www/html

ENV WEB_DOMAIN=luckperms.example.com
ENV BYTEBIN_DOMAIN=bytebin.example.com
ENV BYTEBIN_PROXY_URL=http://bytebin:8080
ENV BYTEBIN_ACCESS_URL=http://bytebin.example.com
