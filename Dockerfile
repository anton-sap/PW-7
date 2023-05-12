FROM alpine:3.18.0
LABEL description="Python-App"
MAINTAINER Anton Saprikin
RUN apk --update add python3 && apk add py3-pip
RUN pip3 install --no-cache-dir -U flask configparser psycopg2-binary
COPY /srv/app/web.py /srv/app/
COPY /srv/app/conf/web.conf /srv/app/conf/
CMD ["python3", "/srv/app/web.py"]
