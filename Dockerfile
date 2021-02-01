FROM ubuntu:16.04

ENV COLOR "red"
RUN apt-get update -y && \
    apt-get install -y python-pip python-dev

# We copy just the requirements.txt first to leverage Docker cache
COPY ./requirement.txt /app/requirement.txt

WORKDIR /app

RUN pip install -r requirement.txt

COPY . /app

EXPOSE 8080
ENTRYPOINT [ "python" ]

CMD [ "app.py" ]
