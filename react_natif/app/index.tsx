import React from 'react';
import {
  View,
  Text,
  StyleSheet,
  TouchableOpacity,
  SafeAreaView,
} from 'react-native';
import { router } from 'expo-router';

export default function HomeScreen() {
  return (
    <SafeAreaView style={styles.container}>
      <View style={styles.content}>
        <View style={styles.header}>
          <Text style={styles.appName}>Mon App</Text>
        </View>

        <View style={styles.textContainer}>
          <Text style={styles.welcomeText}>
            Bienvenue dans votre nouvelle application !
          </Text>
          <Text style={styles.descriptionText}>
            Commencez à développer votre app à partir de ce template.
          </Text>
        </View>

        <TouchableOpacity
          style={styles.button}
          onPress={() => router.push('/about')}
          activeOpacity={0.8}
        >
          <Text style={styles.buttonText}>À propos</Text>
        </TouchableOpacity>
      </View>
    </SafeAreaView>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#ffffff',
  },
  content: {
    flex: 1,
    paddingHorizontal: 24,
    justifyContent: 'center',
  },
  header: {
    alignItems: 'center',
    marginBottom: 60,
  },
  appName: {
    fontSize: 32,
    fontWeight: '700',
    color: '#333333',
    letterSpacing: -0.5,
  },
  textContainer: {
    paddingHorizontal: 8,
    marginBottom: 60,
  },
  welcomeText: {
    fontSize: 20,
    fontWeight: '600',
    color: '#333333',
    textAlign: 'center',
    lineHeight: 28,
    marginBottom: 16,
  },
  descriptionText: {
    fontSize: 16,
    color: '#666666',
    textAlign: 'center',
    lineHeight: 24,
  },
  button: {
    backgroundColor: '#2196F3',
    borderRadius: 25,
    paddingVertical: 18,
    paddingHorizontal: 40,
    alignItems: 'center',
    marginHorizontal: 20,
    shadowColor: '#000',
    shadowOffset: {
      width: 0,
      height: 2,
    },
    shadowOpacity: 0.1,
    shadowRadius: 3.84,
    elevation: 5,
  },
  buttonText: {
    color: '#fff',
    fontSize: 18,
    fontWeight: '600',
    letterSpacing: 0.5,
  },
});
