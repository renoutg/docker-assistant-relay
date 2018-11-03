FROM node:8-alpine
LABEL maintainer "Renout Gerrits <mail@renout.nl>"

RUN apk add --no-cache git && \
	git clone https://github.com/greghesp/assistant-relay.git && \
	cd assistant-relay && \
	npm install && \
	apk del git

VOLUME /assistant-relay/server/configurations/
EXPOSE 3000

WORKDIR /assistant-relay
CMD npm run start
