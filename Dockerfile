# Use official Python image
FROM python:3.11-slim

WORKDIR /app
COPY app.py /app
COPY ./templates /app/templates

RUN pip install gunicorn flask couchdb requests beautifulsoup4

EXPOSE 5000

CMD ["gunicorn", "-b", "0.0.0.0:5000", "app:app"]
