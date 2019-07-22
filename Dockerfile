FROM ubuntu:latest
MAINTAINER paweale@gmail.com
WORKDIR /usr/src/app
COPY static/ .
RUN ["/usr/bin/apt", "update", "-y"]
RUN ["/usr/bin/apt", "install", "npm", "-y"]
RUN ["npm", "install", "-g", "express"]
EXPOSE 3000/tcp
ENTRYPOINT ["node", "./main.js"]
