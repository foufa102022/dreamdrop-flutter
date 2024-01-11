# Use the latest version of cirrusci/flutter image
FROM cirrusci/flutter:latest

# Set the working directory
WORKDIR /app

# Copy the project files into the container
COPY . .

# Run Flutter commands to get dependencies and build the application
RUN flutter pub get
RUN flutter build apk --release

# Optionally expose a port if needed
# EXPOSE 3000

# Command to run the application (may vary based on your Flutter project)
CMD ["flutter", "run"]





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
