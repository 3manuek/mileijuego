FROM node:16.20
USER node
RUN mkdir -p /home/node/app
WORKDIR /home/node/app
COPY --chown=node . .
RUN rm yarn.lock
RUN yarn install
CMD ["yarn", "start"]
