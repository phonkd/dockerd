FROM gcr.io/google_samples/gb-frontend:v5
RUN apt-get update -y
RUN apt-get upgrade --no-install-recommends -y
RUN apt update -y
RUN apt upgrade -y
RUN apt autoremove
RUN apt-get autoclean
ENV PRAKTIKUM=true
CMD echo $PRAKTIKUM $PHP_INI_DIR
