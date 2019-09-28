FROM node:10-alpine
ADD . /app
WORKDIR /app
RUN npm install
RUN npm install -g nodemon
CMD ["npm", "start"]
EXPOSE 5656	
