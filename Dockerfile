FROM node:18

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .

# Asegúrate de que la carpeta `media` exista
RUN mkdir -p ./media

EXPOSE 3000

CMD ["node", "index.js"]