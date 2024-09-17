ARG PYTHON_VERSION=3.11.4

FROM python:${PYTHON_VERSION}-slim AS base

WORKDIR /app

COPY index.html .
COPY assets assets

EXPOSE 8000

CMD python3 -m http.server
# CMD python3 -m uvicorn app:app --host=0.0.0.0 --port=8000

