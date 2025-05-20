FROM node:18

WORKDIR /app

# Instala certificados SSL válidos
RUN apt-get update && apt-get install -y ffmpeg

COPY package*.json ./
RUN npm install

COPY . .

# Asegúrate de que la carpeta `media` exista
RUN mkdir -p ./media

EXPOSE 3000

CMD ["node", "servidor.js"]