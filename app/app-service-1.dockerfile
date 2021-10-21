FROM node:lts

RUN mkdir -p /usr/app/current
COPY . /usr/app/current
RUN chown -R node:node /usr/app/current

USER node
WORKDIR /usr/app/current

CMD npm run service-1

EXPOSE 3000
