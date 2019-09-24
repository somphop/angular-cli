FROM node:12.10.0-alpine

# install angular-cli as node user
RUN chown -R node:node /usr/local/lib/node_modules \
  && chown -R node:node /usr/local/bin

USER node
RUN npm install -g @angular/cli@8.3.5

# set npm as default package manager for root
USER root
RUN ng set --global packageManager=npm
