import 'package:flutter/material.dart';
import 'about_us.dart';
import 'main.dart';
import 'academics.dart';

void main() => runApp(const Clubs());

class Clubs extends StatelessWidget {
  const Clubs({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const ClubsPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ClubsPage extends StatelessWidget {
  const ClubsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const AppDrawer(), // Drawer on the left
      backgroundColor: const Color.fromARGB(255, 66, 145, 150),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 66, 145, 150),
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu, color: Colors.white),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const MyApp()), // Navigate to main.dart
              );
            },
          ),
        ],
      ),




      body: SafeArea(
        child: Stack(
          children: [
            // Decorative Circles (top-right for variety)
            Positioned(
              top: -60,
              right: -60,
              child: Container(
                width: 140,
                height: 140,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(120, 139, 13, 13),
                ),
              ),
            ),
            Positioned(
              top: 0,
              right: -80,
              child: Container(
                width: 140,
                height: 140,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(180, 108, 122, 131),
                ),
              ),
            ),

            // Main Content
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                children: [
                  const Spacer(flex: 11),
                  const Text(
                    "Clubs at IMA",
                    style: TextStyle(
                      fontSize: 34,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    "The Indian Military Academy (IMA), nestled in the foothills of the Himalayas in Dehradun, is one of the most prestigious military training institutions in India. Established in 1932, it has been the cradle of leadership for countless officers of the Indian Army. The academy is renowned for its discipline, rigorous training, and the transformation it brings in young men, shaping them into fearless and honorable soldiers. The iconic Chetwode Building stands tall as a symbol of heritage and pride, echoing the academy’s rich legacy. The ethos of IMA is rooted in the Chetwode Motto, which emphasizes duty towards the nation above all. Cadets undergo intensive physical, academic, and leadership training, preparing them for the challenges of military life. The Passing Out Parade, a moment of pride and tradition, marks the culmination of this journey, as cadets march forward to serve the nation with valor and dedication.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 15,
                      height: 1.4,
                      color: Colors.black87,
                    ),
                  ),
                  const Spacer(flex: 2),

                  // Optional image or mascot/icon
                  Image.asset(
                    'assets/chetwood_about_us.png',
                    height: 250,
                  ),
                  const SizedBox(height: 0),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 66, 145, 150),
            ),
            child: Text(
              'About Us',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.info),
            title: const Text('About IMA'),
            onTap: () {
              Navigator.pop(context); // Close the drawer
              // Navigate to the About Us page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AboutUsPage()), // Replace with your About Us page
              );
            },
          ),

          ListTile(
            leading: const Icon(Icons.school),
            title: const Text('Academics'),
            onTap: () {
              Navigator.pop(context); // Close the drawer
              // Navigate to the About Us page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Academics()), // Academics Page
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.group),
            title: const Text('Clubs'),
             onTap: () {
              Navigator.pop(context); // Close the drawer
              // Navigate to the About Us page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ClubsPage()), // Academics Page
              );
            },
          ),
        ],
      ),
    );
  }
}
