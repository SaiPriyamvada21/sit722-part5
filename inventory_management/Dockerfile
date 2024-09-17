# Your Solution
FROM python:3.12

WORKDIR /usr/src/app
COPY ./app/. ./
COPY requirements.txt ./
RUN pip install -r requirements.txt
CMD uvicorn main:app --host 0.0.0.0 --port $PORT