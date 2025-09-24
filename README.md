# 📱 Template d'Application React Native

Un template simple et épuré pour démarrer rapidement vos projets React Native avec Expo.

## 🚀 Démarrage ultra-rapide

### Option 1: Configuration automatique
```bash
cd react_natif
./setup.sh "Mon Super Projet"
```

### Option 2: Configuration manuelle
```bash
cd react_natif
npm install
npm start
```

## ✨ Ce qui est inclus

- ✅ **Expo Router** - Navigation basée sur les fichiers
- ✅ **TypeScript** - Typage statique
- ✅ **Composants thémés** - Support clair/sombre automatique
- ✅ **Structure propre** - Organisation claire des dossiers
- ✅ **ESLint** - Linting du code
- ✅ **Makefile** - Commandes simplifiées

## 📁 Structure du projet

```
react_natif/
├── app/                    # 📄 Pages de votre app
│   ├── _layout.tsx        # Layout principal
│   ├── index.tsx          # Page d'accueil
│   └── about.tsx          # Page exemple
├── components/            # 🧩 Composants réutilisables
│   ├── ThemedText.tsx     # Texte avec thème
│   └── ThemedView.tsx     # Vue avec thème
├── constants/             # 🎨 Configuration
│   └── Colors.ts          # Couleurs du thème
├── assets/               # 🖼️ Images et icônes
└── setup.sh              # 🛠️ Script de configuration
```

## 🛠️ Commandes disponibles

### Avec le Makefile (depuis la racine)
```bash
make dev      # Lancer le serveur de développement
make android  # Lancer sur Android
make ios      # Lancer sur iOS
make install  # Installer les dépendances
make clean    # Nettoyer le cache
```

### Commandes NPM classiques
```bash
npm start     # Démarrer Expo
npm run android
npm run ios
npm run web
npm run lint
```

## 🎯 Avantages de ce template

### ✅ **Simplicité**
- Pas de fonctionnalités superflues
- Structure claire et compréhensible
- Dépendances minimales essentielles

### ✅ **Flexibilité**  
- Base solide pour tout type d'app
- Composants thémés personnalisables
- Navigation extensible

### ✅ **Productivité**
- Configuration automatique
- Commandes Makefile pratiques
- TypeScript pré-configuré

### ✅ **Maintenance**
- Code propre et commenté
- Structure évolutive
- Best practices appliquées

## 📋 Checklist après clonage

- [ ] Exécuter `./setup.sh "Mon App"` ou configurer manuellement
- [ ] Personnaliser les couleurs dans `constants/Colors.ts`
- [ ] Remplacer les icônes dans `assets/images/`
- [ ] Modifier le contenu de la page d'accueil
- [ ] Ajouter vos propres écrans

## 🎨 Personnalisation rapide

### Changer les couleurs
Éditez `constants/Colors.ts` :
```typescript
export const Colors = {
  light: {
    text: '#000000',
    background: '#ffffff',
    tint: '#2196F3', // Votre couleur principale
    // ...
  }
}
```

### Ajouter un nouvel écran
Créez `app/nouvel-ecran.tsx` :
```typescript
export default function NouvelEcran() {
  return (
    <ThemedView style={{ flex: 1, justifyContent: 'center', alignItems: 'center' }}>
      <ThemedText type="title">Nouvel Écran</ThemedText>
    </ThemedView>
  );
}
```

## 🤝 Pourquoi ce template ?

Ce template a été conçu pour **éviter la sur-ingénierie** tout en gardant les **essentiels** :

- 🚫 Pas de librairies inutiles
- 🚫 Pas de configuration complexe  
- 🚫 Pas de code métier spécifique
- ✅ Juste ce qu'il faut pour commencer
- ✅ Base solide et extensible
- ✅ Documentation claire

## 📱 Compatible avec

- ✅ iOS
- ✅ Android  
- ✅ Web
- ✅ Expo Go
- ✅ Expo Dev Build

---

**Bon développement ! 🚀**
