import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingPage extends StatelessWidget {
  const LoadingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF294C60), // Dark military blue
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Badge or Logo Container
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.black,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black54,
                    blurRadius: 12,
                    offset: Offset(0, 6),
                  ),
                ],
              ),
              padding: const EdgeInsets.all(24),
              child: const Icon(
                Icons.military_tech,
                color: Color.fromARGB(255, 221, 236, 5),
                size: 60,
              ),
            ),

            const SizedBox(height: 30),

            // Spinner Animation
            const SpinKitPulse(
              color: Colors.amberAccent,
              size: 60.0,
            ),

            const SizedBox(height: 25),

            // Custom Animated Text
            const Text(
              "Deploying Mission Data...",
              style: TextStyle(
                fontSize: 18,
                color: Colors.white70,
                fontWeight: FontWeight.w500,
                letterSpacing: 1.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
