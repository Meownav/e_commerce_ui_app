import 'package:e_commerce_app/pages/home_page.dart';
import 'package:flutter/material.dart';

class Intro extends StatelessWidget {
  const Intro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.all(24),
                  child: Image.asset(
                    color: const Color.fromARGB(255, 4, 22, 36),
                    "assets/images/nike.png",
                    height: 200,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Just do it",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 28,
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Text(
                  "Brand new sneakers for maximum comfort, made with premium quality.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey[600],
                  ),
                ),
                const SizedBox(
                  height: 60,
                ),
                GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomePage())),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[900],
                      borderRadius: BorderRadius.circular(2),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(20),
                      child: Text(
                        "Shop Now",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
