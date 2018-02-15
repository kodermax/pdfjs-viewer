FROM node:carbon
WORKDIR /app

COPY package*.json ./

RUN npm install
RUN npm install -g gulp-cli
RUN npm install -g http-server

COPY . .

RUN gulp generic
EXPOSE 8080
CMD ["http-server", "build/generic"]