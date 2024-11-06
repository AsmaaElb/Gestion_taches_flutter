import 'package:flutter/material.dart';
import 'package:gestion_taches/splash_screen.dart';
import 'onboarding_screen.dart';
import 'new_onboarding_screen.dart'; // Ajout pour NewOnboardingScreen

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      initialRoute: '/', // L'application démarre avec l'écran de splash
      routes: {
        '/': (context) =>
            SplashScreen(), // Ton écran de splash (remplace si nécessaire)
        '/onboarding': (context) =>
            OnboardingScreen(), // Premier écran d'onboarding
        '/new_onboarding': (context) =>
            NewOnboardingScreen(), // Nouvel écran d'onboarding
      },
    );
  }
}
