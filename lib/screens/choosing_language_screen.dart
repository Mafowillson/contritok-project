import 'package:contritok/constants/images.dart';
import 'package:contritok/widgets/custom_button.dart';
import 'package:contritok/widgets/glass_box.dart';
import 'package:contritok/widgets/language_tile.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class ChoosingLanguageScreen extends StatefulWidget {
  const ChoosingLanguageScreen({super.key});

  @override
  State<ChoosingLanguageScreen> createState() => _ChoosingLanguageScreenState();
}

class _ChoosingLanguageScreenState extends State<ChoosingLanguageScreen> {
  List<String> language = [
    'Bambili',
    'Bambui',
    'Bafut',
    'Kom',
    'Banso',
    'Kambe',
    'Batibo',
    'Babanki',
    'Noni',
  ];

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
            height: MediaQuery.of(context).size.height / 1.07,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Choose a language',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    Transform.rotate(
                      angle: math.pi / 4,
                      child: Image.asset(
                        'assets/icons/fish.png',
                        width: 100,
                      ),
                    ),
                    const SizedBox(width: 20),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          style: BorderStyle.solid,
                        ),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Which language will you like\n to learn',
                          softWrap: true,
                        ),
                      ),
                    )
                  ],
                ),
                ListView.builder(
                  itemCount: language.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8),
                      child: LanguageTile(
                        text: language[index],
                      ),
                    );
                  },
                ),
                CustomButton(
                  onPressed: () {},
                  text: 'Continue',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
