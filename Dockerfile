FROM node

WORKDIR /app

COPY package.json /app

RUN npm install

# Copier package.json en premier dans /app assure que la 
# commande `RUN npm install` ne s'exécute plus quand on va mettre 
# à jour le code source et copier tout dans /app avec `COPY . /app`
# Pourquoi ? parce que Docker utilise les cache à chaque ligne d'instruction (layer)
# Et puisque la modification du code invalide le cache du layer `COPY . /app`
# C'est mieux de copier package.json en 1er car on le modifie rarement
# Donc lors d'une mise a jour du build, seules la commande du layer dont le cache 
# est invalide (ici `COPY . /app`) et les suivantes seront réexécutées
COPY . /app

EXPOSE 80

CMD [ "node", "server" ]
