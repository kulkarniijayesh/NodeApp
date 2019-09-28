FROM node:12
ADD . /app
WORKDIR /app
RUN npm install
RUN npm install -g nodemon
CMD ["npm", "start"]
EXPOSE 5656	
