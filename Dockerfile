FROM python:3.10-slim⁠

RUN apt update -y && apt install awscli -y
WORKDIR /app

COPY . /app
RUN pip install -r requirements_aws.txt

CMD ["python3", "app.py"]