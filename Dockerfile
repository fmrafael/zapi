# Dockerfile para Evolution API v2 (teste gratuito)
FROM node:18-alpine

# Diretório de trabalho
WORKDIR /app

# Copia package.json e package-lock.json (se houver)
COPY package*.json ./

# Instala dependências
RUN npm install --production

# Copia o restante do código
COPY . .

# Expõe a porta que o Evolution API usa
EXPOSE 8080

# Comando para iniciar a API
CMD ["node", "index.js"]
