FROM ubuntu
RUN apt-get update -y
RUN apt-get install apache2 -y
LABEL author=devops team
EXPOSE 80
ADD pr.tar
RUN mkdir /app
USER john
USERADD john
WORKDIR /app
CMD apache2ctl -D FOREGROUND
