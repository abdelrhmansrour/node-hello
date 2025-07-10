FROM node:24.3.0-alpine3.22


WORKDIR /app


RUN addgroup -S nodegroup && adduser -S nodeuser -G nodegroup


COPY package*.json ./
RUN npm install


COPY . .


RUN chown -R nodeuser:nodegroup /app


USER nodeuser


EXPOSE 3000


CMD ["npm", "run", "start"]
