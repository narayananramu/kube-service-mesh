FROM node:lts

RUN mkdir -p /usr/app/current
COPY . /usr/app/current
RUN chown -R node:node /usr/app/current

USER node
WORKDIR /usr/app/current

CMD npm run main-service

EXPOSE 3000
