FROM node:18


WORKDIR /app


COPY package*.json ./

# Installer les dépendances
RUN npm install

# Copier le reste du code
COPY . .

# Exposer le port sur lequel l'application Angular sera servie
EXPOSE 4200

# Démarrer l'application Angular en mode développement
CMD ["npm", "start"]
