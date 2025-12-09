FROM python:3.8-slim

WORKDIR /app

RUN pip install pandas pymysql cryptography

COPY etl_script.py .

CMD ["python", "etl_script.py"]
