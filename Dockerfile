# Utiliser une image de base Java
FROM openjdk:17-jdk-slim

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Copier le fichier JAR généré dans le conteneur
COPY demo.jar app/demo.jar

# Exposer le port sur lequel l'application écoute
EXPOSE 8086

# Définir la commande pour exécuter l'application
ENTRYPOINT ["java", "-jar", "demo.jar"]
