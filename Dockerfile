# Utilisez une image de base appropriée
FROM node:14

# Créez et définissez le répertoire de travail
WORKDIR /app

# Copiez les fichiers nécessaires dans le conteneur
COPY package*.json ./
COPY public/ ./public
COPY src/ ./src

# Installez les dépendances
RUN npm install

# Exposez le port sur lequel l'application écoute
EXPOSE 3000

# Commande pour démarrer l'application
CMD ["npm", "start"]
