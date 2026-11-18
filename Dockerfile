##
##   docker build . -f Dockerfile    -t piousbox/headtts:0.0.2
##   docker push piousbox/headtts:0.0.2
##

FROM node:22-bookworm

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 8882

CMD ["npm", "start"]

