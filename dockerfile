FROM python:3.10-slim-buster

ENV TZ="America/Chicago"

WORKDIR /app

COPY requirements.txt .

RUN pip install -r requirements.txt --no-cache-dir

COPY . .

CMD [ "python", "main.py" ]