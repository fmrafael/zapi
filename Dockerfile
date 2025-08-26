# Usa Node 18 Alpine
FROM node:18-alpine

# Define o diretório de trabalho
WORKDIR /app

# Instala git e bash (opcional, caso precise)
RUN apk add --no-cache git bash

# Copia package.json e package-lock.json primeiro para instalar dependências
COPY package*.json ./

# Instala dependências de produção
RUN npm install --omit=dev

# Copia todo o restante do código para dentro do container
COPY . .

# Define a porta que o app vai rodar
EXPOSE 3000

# Comando para iniciar a aplicação
CMD ["npm", "start"]
