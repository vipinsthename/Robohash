FROM python:3-alpine
ENV PORT 3000
RUN apk add --no-cache jpeg-dev zlib-dev build-base python-dev py-pip
COPY . /app
RUN pip install -r /app/requirements.txt
ENTRYPOINT python /app/robohash/webfront.py --port=${PORT}
