# ARG PYTHON_VERSION=3.11.4

# FROM python:${PYTHON_VERSION}-slim AS base

FROM node:18-alpine AS builder

RUN npm install -g @marp-team/marp-cli

FROM builder

WORKDIR /app

COPY presentations presentations

EXPOSE 8080

CMD marp --html -s ./presentations
# CMD python3 -m http.server
# CMD python3 -m uvicorn app:app --host=0.0.0.0 --port=8000

