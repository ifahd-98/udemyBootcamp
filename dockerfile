FROM node:14-alpine

WORKDIR /UdemyBootCamp

COPY . .

RUN npm install

CMD ["npm", "start"]
