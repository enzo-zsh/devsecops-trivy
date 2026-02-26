# ⚠️  DOCKERFILE VOLONTAIREMENT VULNÉRABLE - À DES FINS ÉDUCATIVES UNIQUEMENT
# NE PAS UTILISER EN PRODUCTION
#
# Vulnérabilités intentionnelles :
#   1. Python 3.7 (EOL depuis juin 2023)
#   2. Image de base non épinglée (latest)
#   3. Exécution en tant que root
#   4. debug=True exposé
#   5. Pas de .dockerignore
#   6. pip sans --no-cache-dir
#   7. Dépendances avec CVEs connues

FROM python:3.7

# Pas d'utilisateur non-root → exécution en root
WORKDIR /app

# Copie tout le répertoire (y compris fichiers sensibles potentiels)
COPY . .

# Installation sans cache propre ni vérification d'intégrité
RUN pip install -r requirements.txt

EXPOSE 5000

# debug=True → exposition de la console Werkzeug interactive
CMD ["python", "app.py"]
