
FROM python:3.9
ARG db_password
ENV DB_PASSWORD $db_password
WORKDIR /code
COPY ./requirements.txt /code/requirements.txt
RUN pip3 install --no-cache-dir --upgrade -r /code/requirements.txt
COPY ./app /code/app
