FROM debian:latest
RUN apt update -y
RUN apt install -y net-tools curl
RUN bash -c "curl -sL https://deb.nodesource.com/setup_16.x | bash -"
RUN apt install -y nodejs

WORKDIR /usr/local

COPY ./script.sh ./script.sh
RUN chmod +x ./script.sh
COPY prisma/* ./prisma/
COPY .env ./