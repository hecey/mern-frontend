FROM node
# Create app directory
WORKDIR /usr/src/app

COPY package*.json ./


RUN npm install express cors mongoose dotenv
RUN npm install -g nodemon
# If you are building your code for production
# RUN npm ci --only=production

COPY . .

EXPOSE 5051


CMD [ "nodemon", "start" ,"5051"]