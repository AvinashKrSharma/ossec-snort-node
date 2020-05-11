# server 1
FROM node:7
WORKDIR /app
COPY 1/package.json /app
RUN npm install --silent
COPY 1 /app
EXPOSE 8081
ENTRYPOINT ["node", "index.js"]

# server 2
FROM node:7
WORKDIR /app
COPY 2/package.json /app
RUN npm install --silent
COPY 2 /app
EXPOSE 8082
ENTRYPOINT ["node", "index.js"]
