# FROM trion/ng-cli AS builder
# FROM node:14.18.1-alpine3.13 as builder
FROM node:14.18.1-alpine3.13

ARG ENVIRONMENT

ADD . /app
WORKDIR /app
# RUN npm i -g pm2
RUN npm install nuxt
RUN npm install .
RUN npm run ${ENVIRONMENT}build
ENTRYPOINT npm run prod
# ENTRYPOINT pm2 start npm --name chatspace -- run ${ENVIRONMENT}

# RUN npm i -g @angular/cli
# RUN ng build --configuration=${ENVIRONMENT}

# ===== runtime =====
# FROM nginx:1.21.1-alpine
# COPY --from=builder /app/dist/web /usr/share/nginx/html
# ADD devops/nginx.conf /etc/nginx/conf.d/default.conf