# this is an answer file for the Assignment
# move it up a directory for it to work
FROM node:18-alpine3.20

EXPOSE 3000

RUN apk add --no-cache tini

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install && npm cache clean --force

COPY . .

ENTRYPOINT ["tini", "--"]

CMD ["node", "app.js"]
