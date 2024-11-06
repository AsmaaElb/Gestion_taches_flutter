import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Bouton "Skip" en haut à gauche
            Align(
              alignment: Alignment.topLeft,
              child: TextButton(
                onPressed: () {
                  // Naviguer directement vers la page principale si "Skip" est cliqué
                  Navigator.pushReplacementNamed(context, '/home');
                },
                child: Text(
                  "SKIP",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),

            Spacer(),

            // Image centrale (remplacez l'icône par votre image)
            Image.asset(
              'assets/onboarding_image1.png', // Assurez-vous que cette image existe dans assets
              height: 200,
            ),

            SizedBox(height: 20),

            // Indicateur de pages (exemple avec 3 points)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
              "Manage your tasks",
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
              "You can easily manage all of your daily tasks in DoMe for free",
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
                    // Action pour le bouton "Back" (si navigation vers une page précédente)
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
                    // Naviguer vers NewOnboardingScreen (nouvelle page d'onboarding)
                    Navigator.pushNamed(context, '/new_onboarding');
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
