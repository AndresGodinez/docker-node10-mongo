FROM node:10

COPY ["package.json", "package-lock.json", "/usr/src/"]

WORKDIR /usr/src

RUN npm install --force

RUN npm audit fix

COPY [".", "/usr/src/"]

EXPOSE 3000

CMD ["npx", "nodemon", "--legacy-watch", "index.js"]
