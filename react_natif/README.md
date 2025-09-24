# Template d'Application React Native 📱

Ce template vous permet de démarrer rapidement vos projets React Native avec Expo Router.

## Fonctionnalités incluses

- ✅ Expo Router pour la navigation
- ✅ TypeScript configuré
- ✅ Composants thémés (ThemedText, ThemedView)
- ✅ Support des thèmes clair/sombre
- ✅ Structure de navigation basique
- ✅ Configuration ESLint

## Démarrage rapide

1. **Installer les dépendances**
   ```bash
   npm install
   ```

2. **Lancer l'application**
   ```bash
   npx expo start
   ```

3. **Tester sur votre appareil**
   - Utilisez l'app Expo Go sur votre téléphone
   - Ou lancez sur un émulateur/simulateur

## Structure du projet

```
app/
├── _layout.tsx          # Layout principal
├── index.tsx           # Page d'accueil
└── about.tsx           # Page à propos

components/
├── ThemedText.tsx      # Composant texte thémé
├── ThemedView.tsx      # Composant vue thémé
└── ui/                 # Composants UI supplémentaires

constants/
└── Colors.ts           # Définition des couleurs
```

## Personnalisation

1. **Changer le nom de l'app** : Modifiez `package.json` et `app.json`
2. **Personnaliser les couleurs** : Éditez `constants/Colors.ts`
3. **Ajouter des pages** : Créez de nouveaux fichiers dans `app/`
4. **Modifier le style** : Utilisez les composants thémés ou créez vos propres styles

## Commandes utiles

- `npm start` : Démarre le serveur de développement
- `npm run android` : Lance sur Android
- `npm run ios` : Lance sur iOS
- `npm run web` : Lance sur navigateur
- `npm run lint` : Vérifie le code avec ESLint

## Prochaines étapes

1. Personnalisez les couleurs et le style selon votre marque
2. Ajoutez vos propres écrans et composants
3. Configurez la navigation selon vos besoins
4. Ajoutez des dépendances spécifiques à votre projet

Bon développement ! 🚀