#!/bin/bash

# Script de configuration pour le template React Native
# Usage: ./setup.sh [nom-de-votre-app]

set -e

# Couleurs pour l'output
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color

# Fonction d'aide
show_help() {
    echo -e "${GREEN}Script de configuration du template React Native${NC}"
    echo ""
    echo "Usage: ./setup.sh [nom-de-votre-app]"
    echo ""
    echo "Ce script va :"
    echo "  1. Changer le nom de l'application"
    echo "  2. Mettre à jour les fichiers de configuration"
    echo "  3. Installer les dépendances"
    echo ""
    echo "Exemple: ./setup.sh mon-super-projet"
}

# Vérification des arguments
if [ $# -eq 0 ] || [ "$1" = "-h" ] || [ "$1" = "--help" ]; then
    show_help
    exit 0
fi

APP_NAME="$1"
SLUG_NAME=$(echo "$APP_NAME" | tr '[:upper:]' '[:lower:]' | sed 's/[^a-z0-9]/-/g' | sed 's/--*/-/g' | sed 's/^-\|-$//g')

echo -e "${YELLOW}🚀 Configuration du template pour: ${APP_NAME}${NC}"
echo -e "${YELLOW}📝 Slug généré: ${SLUG_NAME}${NC}"
echo ""

# Mise à jour du package.json
echo -e "${YELLOW}📦 Mise à jour du package.json...${NC}"
sed -i.bak "s/\"react-native-template\"/\"$SLUG_NAME\"/" package.json && rm package.json.bak

# Mise à jour du app.json
echo -e "${YELLOW}📱 Mise à jour du app.json...${NC}"
sed -i.bak "s/\"React Native Template\"/\"$APP_NAME\"/" app.json && rm app.json.bak
sed -i.bak "s/\"react-native-template\"/\"$SLUG_NAME\"/" app.json && rm app.json.bak
sed -i.bak "s/\"template\"/\"$SLUG_NAME\"/" app.json && rm app.json.bak

# Mise à jour du titre dans index.tsx
echo -e "${YELLOW}🏠 Mise à jour de la page d'accueil...${NC}"
sed -i.bak "s/Mon App/$APP_NAME/" app/index.tsx && rm app/index.tsx.bak

# Installation des dépendances
echo -e "${YELLOW}📦 Installation des dépendances...${NC}"
npm install

echo ""
echo -e "${GREEN}✅ Configuration terminée !${NC}"
echo ""
echo -e "${GREEN}Prochaines étapes :${NC}"
echo "  1. Personnalisez les couleurs dans constants/Colors.ts"
echo "  2. Remplacez les icônes dans assets/images/"
echo "  3. Commencez à développer votre app !"
echo ""
echo -e "${GREEN}Pour démarrer :${NC}"
echo "  npm start"
echo ""
