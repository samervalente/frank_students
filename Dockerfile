FROM node:16

WORKDIR /.

COPY package*.json ./
RUN npm install

COPY . .

RUN npm ci --prefix=$NPM_PACKAGES

EXPOSE 5000



CMD ["npm", "start"]