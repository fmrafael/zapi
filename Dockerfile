# Dockerfile para Evolution API v2 no Render
FROM node:18-alpine

# Diretório de trabalho
WORKDIR /app

# Instala git para clonar o repositório e bash
RUN apk add --no-cache git bash

# Clona o repositório oficial do Evolution API
RUN git clone https://github.com/AtendAI/evolution-api.git . 

# Instala dependências de produção
RUN npm install --omit=dev

# Expõe a porta padrão da Evolution API
EXPOSE 8080

# Comando para iniciar a API
CMD ["node", "index.js"]

