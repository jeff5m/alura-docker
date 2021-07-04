FROM node:latest
LABEL image.author="Jeff Lee"
ENV NODE_ENV=prod
ENV PORT=3000
COPY . /var/www
WORKDIR /var/www
RUN [ "npm", "install" ]
ENTRYPOINT [ "npm", "start" ]
EXPOSE $PORT
