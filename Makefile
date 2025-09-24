# Template React Native - Makefile
# Commandes simplifiées pour le développement

# Variables
PROJECT_DIR = react_natif

# Couleurs pour l'output
GREEN = \033[0;32m
YELLOW = \033[1;33m
RED = \033[0;31m
NC = \033[0m # No Color

.PHONY: help install clean dev android ios web lint clear

# Commande par défaut
help: ## Affiche cette aide
	@echo "$(GREEN)Template React Native - Commandes disponibles:$(NC)"
	@echo "  make install  - Installer les dépendances"
	@echo "  make clean    - Nettoyer le cache et les node_modules"
	@echo "  make dev      - Lancer le serveur de développement"
	@echo "  make android  - Lancer sur Android"
	@echo "  make ios      - Lancer sur iOS"
	@echo "  make web      - Lancer sur navigateur"
	@echo "  make lint     - Vérifier le code avec ESLint"
	@echo "  make clear    - Nettoyer le projet pour Git (cache, logs, etc.)"

install: ## Installer les dépendances
	@echo "$(YELLOW)Installation des dépendances...$(NC)"
	cd $(PROJECT_DIR) && npm install
	@echo "$(GREEN)✅ Dépendances installées$(NC)"

clean: ## Nettoyer le cache et les node_modules
	@echo "$(YELLOW)Nettoyage des modules...$(NC)"
	cd $(PROJECT_DIR) && rm -rf node_modules .expo package-lock.json yarn.lock
	@echo "$(GREEN)✅ Nettoyage terminé$(NC)"

dev: ## Lancer le serveur de développement
	@echo "$(YELLOW)Démarrage du serveur de développement...$(NC)"
	cd $(PROJECT_DIR) && npm start

android: ## Lancer sur Android
	@echo "$(YELLOW)Lancement sur Android...$(NC)"
	cd $(PROJECT_DIR) && npm run android

ios: ## Lancer sur iOS
	@echo "$(YELLOW)Lancement sur iOS...$(NC)"
	cd $(PROJECT_DIR) && npm run ios

web: ## Lancer sur navigateur
	@echo "$(YELLOW)Lancement sur navigateur...$(NC)"
	cd $(PROJECT_DIR) && npm run web

lint: ## Vérifier le code avec ESLint
	@echo "$(YELLOW)Vérification du code...$(NC)"
	cd $(PROJECT_DIR) && npm run lint

clear: ## Nettoyer le projet pour Git (cache, logs, fichiers temporaires)
	@echo "$(YELLOW)🧹 Nettoyage du projet pour Git...$(NC)"
	@# Nettoyer le cache Expo
	cd $(PROJECT_DIR) && rm -rf .expo
	@# Supprimer les fichiers de logs
	cd $(PROJECT_DIR) && rm -rf *.log npm-debug.log* yarn-debug.log* yarn-error.log*
	@# Nettoyer les fichiers temporaires macOS
	find . -name ".DS_Store" -type f -delete
	@# Nettoyer les fichiers temporaires des éditeurs
	find . -name "*.tmp" -type f -delete
	find . -name "*.temp" -type f -delete
	find . -name "*~" -type f -delete
	@# Nettoyer le cache Metro
	cd $(PROJECT_DIR) && npx expo start --clear 2>/dev/null || true
	@# Nettoyer les fichiers de backup (créés par sed)
	find . -name "*.bak" -type f -delete
	@echo "$(GREEN)✅ Projet nettoyé et prêt pour Git !$(NC)"
	@echo "$(GREEN)📝 Vous pouvez maintenant faire: git add . && git commit$(NC)"
