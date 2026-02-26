# devsecops-trivy

# 🚨 Hello World Flask – Dockerfile Vulnérable (Éducatif)

> ⚠️ Ce projet est **intentionnellement vulnérable**. Il est destiné à des exercices de sécurité (CTF, formation DevSecOps, audits). Ne pas déployer en production.

## Structure

```
hello-world-flask/
├── app.py            # Application Flask
├── requirements.txt  # Dépendances obsolètes
├── Dockerfile        # Image volontairement vulnérable
└── README.md
```

## Lancer l'application

```bash
# Build
docker build -t hello-flask-vuln .

# Run
docker run -p 5000:5000 hello-flask-vuln

# Test
curl http://localhost:5000/
curl http://localhost:5000/health
```

