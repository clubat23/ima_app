import 'package:flutter/material.dart';
import 'loading_page.dart';
import 'login.dart'; 
import 'about_us.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 66, 145, 150),
      body: SafeArea(
        child: Stack(
          children: [
            // Decorative Circles (top-left)
            Positioned(
              top: 0,
              left: -80,
              child: Container(
                width: 150,
                height: 150,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(200, 108, 122, 131),
                ),
              ),
            ),
            Positioned(
              top: -80,
              left: 0,
              child: Container(
                width: 150,
                height: 150,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(127, 139, 13, 13),
                ),
              ),
            ),

            // Main content
            Column(
              children: [
                // Profile Icon (top-right)
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: GestureDetector(
                      onTap: () async {
                        // Show loading screen
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoadingPage()),
                        );

                        // Simulate loading
                        await Future.delayed(const Duration(seconds: 1));

                        // Navigate to LoginScreen and remove LoadingPage
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginScreen()),
                        );
                      },
                      child: CircleAvatar(
                        backgroundColor: Colors.black,
                        radius: 22,
                        child: const Icon(Icons.person, color: Colors.white),
                      ),
                    ),
                  ),
                ),

                const Spacer(flex: 4),

                // Illustration
                Center(
                  child: Image.asset(
                    'assets/chetwood_ghibli_dark.jpg', // <-- Make sure to add this in assets
                    height: 220,
                  ),
                ),

                const SizedBox(height: 30),

                // Title
                const Center(
                  child: Text(
                    "Welcome to Indian Military Academy",
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                      color: Colors.black87,
                      fontStyle: FontStyle.italic,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),

                const SizedBox(height: 12),

                // Description
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 32.0),
                  child: Text(
                    "This is the application dealing with all monthly newsletters for IMA as well as study materials for Officer Cadets",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black54,
                      height: 1.5,
                    ),
                  ),
                ),

                const Spacer(flex: 2),

                // Buttons
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    children: [
                      // Newsletters Button
                      SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF8B0D0D),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                          child: const Text(
                            "Newsletters",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 14),

                      // About Us Button
                      SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () async {
                            // Navigate to the LoadingPage first
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const LoadingPage()),
                            );

                            // Simulate loading with a delay
                            await Future.delayed(const Duration(seconds: 1));

                            // After loading is complete, navigate to AboutUsPage
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(builder: (context) => const AboutUsPage()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color.fromARGB(255, 97, 110, 117),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                          child: const Text(
                            "About Us",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),
                ),

                const SizedBox(height: 40),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
