import 'package:flutter/material.dart';

class NewOnboardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Bouton "Skip"
            Align(
              alignment: Alignment.topLeft,
              child: TextButton(
                onPressed: () {
                  // Naviguer directement vers l'écran principal si "Skip" est cliqué
                  Navigator.pushReplacementNamed(context, '/home');
                },
                child: Text(
                  "SKIP",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),

            Spacer(),

            // Image (ajoute une nouvelle image si nécessaire)
            Image.asset(
              'assets/new_onboarding_image1.png', // Nouvelle image
              height: 200,
            ),

            SizedBox(height: 20),

            // Indicateurs de pages (met à jour pour ce nouvel écran)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 4),
                  width: 8,
                  height: 8,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    shape: BoxShape.circle,
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 4),
                  width: 8,
                  height: 8,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 4),
                  width: 8,
                  height: 8,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    shape: BoxShape.circle,
                  ),
                ),
              ],
            ),

            SizedBox(height: 20),

            // Titre
            Text(
              "Create your routine",
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),

            SizedBox(height: 10),

            // Sous-titre
            Text(
              "In Uptodo, you can create your personalized routine to stay productive.",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),

            Spacer(),

            // Boutons "Back" et "Next"
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    // Retour à l'écran d'onboarding précédent
                    Navigator.pop(context);
                  },
                  child: Text(
                    "BACK",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purpleAccent, // Couleur violette
                  ),
                  onPressed: () {
                    // Naviguer vers l'écran principal (profile_screen)
                    Navigator.pushReplacementNamed(context, '/home');
                  },
                  child: Text("NEXT"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
