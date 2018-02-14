FROM node:alpine
WORKDIR /app
COPY . .
RUN npm install -g gulp-cli
RUN npm install
RUN npm install -g http-server
RUN gulp generic
CMD ["http-server", "build/generic"]