FROM node:latest
LABEL image.author="Jeff Lee"
COPY . /var/www
WORKDIR /var/www
RUN [ "npm", "install" ]
ENTRYPOINT [ "npm", "start" ]
EXPOSE 3000
