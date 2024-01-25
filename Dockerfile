FROM python:3.8-slim

WORKDIR /app

COPY requirements.txt requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

COPY app/ .

EXPOSE 80

ENV NAME OrderService

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]
