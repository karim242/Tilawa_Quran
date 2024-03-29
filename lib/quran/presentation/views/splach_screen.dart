import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tilawa_quran/utils/app_styles.dart';
import 'package:tilawa_quran/utils/assets.dart';
import 'package:tilawa_quran/quran/presentation/views/home_page.dart';

class SplachScreen extends StatefulWidget {
  const SplachScreen({super.key});

  @override
  State<SplachScreen> createState() => _SplachScreenState();
}

class _SplachScreenState extends State<SplachScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 4),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const HomePage(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SvgPicture.asset(Assets.imagesImageStylesMask),
            Text(
              'Tilawa ',
              style: AppStyles.styleBold40Po(),
            ),
            SizedBox(
              width: MediaQuery.sizeOf(context).width * 0.5,
              child: Text(
                ' Learn Quran and Recite everyday',
                maxLines: 2,
                style: AppStyles.styleRegular24Po(),
              ),
            ),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                  fixedSize: const Size(177, 44),
                  backgroundColor: const Color(0xFF332885)),
              onPressed: () => Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomePage(),
                ),
              ),
              label: const Text('Get Started',
                  style: TextStyle(color: Colors.white)),
              icon: const Icon(Icons.arrow_back, color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
