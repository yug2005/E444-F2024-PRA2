FROM ubuntu:latest

RUN apt-get update -y
RUN apt-get install -y python3-pip python3-dev build-essential

COPY . /app
WORKDIR /app

RUN pip install --break-system-packages -r requirements.txt

ENTRYPOINT ["python3"]
CMD ["hello.py"]
