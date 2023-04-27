FROM node:latest
WORKDIR /opt/game
COPY package*.json ./
RUN npm install
RUN npm install grunt-cli
RUN npm install liftup
COPY . .
EXPORT 8002
CMD ["grunt", "connect"]