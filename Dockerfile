FROM keymetrics/pm2:latest-alpine

WORKDIR /home/node
RUN apk add --no-cache git
USER node
RUN git clone https://github.com/nuc134r/roborock-web.git roborock \
	&& cd roborock \
	&& npm i \
	&& npm run build

ADD start.sh ./
ADD pm2.json ./

#CMD ["/bin/sh", "start.sh"]
ENTRYPOINT ["/home/node/start.sh"]
