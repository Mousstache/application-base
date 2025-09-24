# Configuration du Template

## À faire après avoir cloné ce template :

1. **Renommer le projet**
   - Modifiez le `name` dans `package.json`
   - Modifiez le `name` dans `app.json`

2. **Personnaliser l'apparence**
   - Modifiez les couleurs dans `constants/Colors.ts`
   - Remplacez les icônes dans `assets/images/`
   - Adaptez les styles dans `app/index.tsx`

3. **Configurer l'app**
   - Modifiez le titre et les métadonnées dans `app.json`
   - Ajustez les options dans `expo-env.d.ts` si nécessaire

4. **Ajouter vos fonctionnalités**
   - Créez de nouveaux écrans dans `app/`
   - Ajoutez vos composants dans `components/`
   - Installez les dépendances supplémentaires nécessaires

## Dépendances incluses

### Essentielles
- `expo` - Plateforme de développement
- `expo-router` - Navigation basée sur les fichiers
- `react-native` - Framework mobile
- `typescript` - Support TypeScript

### Navigation
- `@react-navigation/native` - Navigation
- `expo-linking` - Gestion des liens profonds

### Utilitaires
- `expo-constants` - Constantes de l'app
- `expo-status-bar` - Gestion de la barre de statut
- `react-native-safe-area-context` - Zones sûres

## Structure recommandée

```
app/                    # Pages de votre application
├── _layout.tsx        # Layout principal
├── index.tsx          # Page d'accueil
└── [vos-pages].tsx    # Vos autres pages

components/            # Composants réutilisables
├── ThemedText.tsx     # Texte avec thème
├── ThemedView.tsx     # Vue avec thème
└── [vos-composants]/  # Vos composants

constants/             # Constantes de l'app
├── Colors.ts          # Définition des couleurs
└── [autres].ts        # Autres constantes

assets/                # Ressources statiques
├── images/           # Images et icônes
└── [autres]/         # Autres ressources
```
