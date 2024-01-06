FROM node:latest

WORKDIR /home/choreouser

ADD app.tar.gz entrypoint.sh ./

RUN chmod -v 755 entrypoint.sh &&\
    addgroup --gid 10001 choreo &&\
    adduser --disabled-password  --no-create-home --uid 10001 --ingroup choreo choreouser

ENTRYPOINT [ "./entrypoint.sh" ]

USER 10001