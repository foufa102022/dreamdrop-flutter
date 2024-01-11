# Utilisez une image de base appropriée avec Flutter préinstallé
FROM cirrusci/flutter:2.8.0

# Créez et définissez le répertoire de travail
WORKDIR /app

# Copiez les fichiers nécessaires dans le conteneur
COPY . .

# Exécutez les commandes Flutter pour construire l'application
RUN flutter pub get
RUN flutter build apk --release

# Exposez le port si nécessaire (selon le type d'application Flutter)
# EXPOSE 3000

# Commande pour démarrer l'application (peut varier en fonction du type d'application)
# CMD ["flutter", "run"]

# Vous pouvez commenter la commande "flutter run" et utiliser la commande "flutter build" pour la construction de l'APK
# CMD ["flutter", "build", "apk", "--release"]



# Utilisez une image de base appropriée avec Flutter préinstallé
#FROM cirrusci/flutter:2.8.0

# Créez et définissez le répertoire de travail
#WORKDIR /app

# Copiez les fichiers nécessaires dans le conteneur
#COPY . .

# Exécutez les commandes Flutter pour construire l'application
#RUN flutter pub get
#RUN flutter build apk --release

# Exposez le port si nécessaire (selon le type d'application Flutter)
# EXPOSE 3000

# Commande pour démarrer l'application (peut varier en fonction du type d'application)
#CMD ["flutter", "run"]
