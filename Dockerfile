FROM node:4.2.0

RUN npm install hexo-cli -g

RUN mkdir /app
WORKDIR /app

VOLUME [ "/app-dev" ]

COPY ./package.json /app/

RUN npm install

COPY . /app

CMD [ "hexo", "server" ]
