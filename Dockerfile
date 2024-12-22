# Utilisation d'une image officielle Node.js
FROM node:16-alpine

# Définir le répertoire de travail
WORKDIR /usr/src/app

# Copier package.json et package-lock.json
COPY package*.json ./

# Installer les dépendances
RUN npm install

# Copier le reste des fichiers
COPY . .

# Exposer le port pour l'application backend
EXPOSE 5000

# Lancer l'application backend
CMD ["npm", "start"]
