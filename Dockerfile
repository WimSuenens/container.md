FROM node:18-alpine AS builder

RUN npm install -g @marp-team/marp-cli

FROM builder

WORKDIR /app

COPY presentations presentations

EXPOSE 8080

CMD marp --html -s ./presentations

