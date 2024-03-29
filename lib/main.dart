import 'package:flutter/material.dart';
import 'package:tilawa_quran/quran/presentation/views/splach_screen.dart';

void main() {
  runApp(const TilawaQuran());
}

class TilawaQuran extends StatelessWidget {
  const TilawaQuran({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplachScreen(),
    );
  }
}
