import 'package:contritok/constants/images.dart';
import 'package:contritok/widgets/custom_button.dart';
import 'package:contritok/widgets/glass_box.dart';
import 'package:contritok/widgets/welcome_tile.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(homeImage),
            fit: BoxFit.fill,
          ),
        ),
        alignment: const Alignment(1, 1),
        child: SizedBox(
          child: GlassBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 1.5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Welcome,username',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/icons/fish.png',
                      width: 100,
                    ),
                    const SizedBox(width: 20),
                    const Expanded(
                      child: Text(
                        "Hurray, you're at the right place to learn any traditional language of your choice in Bamenda. Get started to become an expert in your mother tongue.",
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 40),
                const WelcomeTile(
                  imgurl: 'assets/icons/image5.png',
                  text:
                      'Volunteer as lecturer in Contritok. Share Knowledge and lets grow.',
                ),
                const SizedBox(height: 20),
                const WelcomeTile(
                  imgurl: 'assets/icons/image6.png',
                  text:
                      'Enroll as a student in ContriTok and learn from the best selected teachers around bamenda.',
                ),
                const SizedBox(height: 40),
                CustomButton(
                  onPressed: () {},
                  text: 'Get Started',
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
