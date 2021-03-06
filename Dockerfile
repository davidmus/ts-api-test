FROM node:10

WORKDIR /usr/src/app

COPY package.json ./

RUN npm install
RUN npm install pm2 -g

COPY ./dist .

EXPOSE 3001

CMD ["pm2-runtime","index.js"]
