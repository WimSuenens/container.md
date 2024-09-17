FROM node:18-alpine AS builder

ENV NODE_OPTIONS="--dns-result-order=ipv4first"

RUN apk update \
  && apk upgrade --no-cache

RUN npm install -g @marp-team/marp-cli -y

FROM builder

WORKDIR /app

COPY presentations presentations

EXPOSE 8080

CMD marp --html -s ./presentations

