FROM python:3.6-slim

RUN apt update && apt install -y git gcc make curl

RUN python -m pip install --upgrade pip

WORKDIR /app

COPY . /app

RUN pip install -r requirements.txt

VOLUME ["/app/models", "/app/logs", "/app/data"]

EXPOSE 5000

CMD make train && make serve