import 'dart:math';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

const _data = [
  "It's not who I am underneath, but what I do that defines me.",
  "The city is angry, scarred, like me. Those scars can destroy us, even after the physical wounds have healed. But if we survive them, they can transform us. They can give us the power to endure and the strength to fight.",
  "They think I'm hiding in the shadows, but I am the shadows.",
  "I'm Vengeance.",
  "I realize now there's something I haven't got past... this fear of ever going through any of that again - of losing somebody I care about.",
  "Vengeance won't change the past. Mine, or anyone else's.",
  "Our scars can destroy us, even after the physical wounds have healed. But if we survive them, they can transform us. They can give us the power to endure and the strength to fight.",
  "Two years of nights have turned me into a nocturnal animal.",
  "Why do we fall sir?… so that we can learn to pick ourselves up!",
  "Gym",
  "Good Sleep",
  "Protein Intake",
  "Less Screentime",
];

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'keepmeinloop.today',
      home: KeepMeInLoopToday(),
    );
  }
}

class KeepMeInLoopToday extends StatelessWidget {
  const KeepMeInLoopToday({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFFF3EEFB),
      body: Usual(),
    );
  }
}

class Usual extends StatelessWidget {
  const Usual({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.topRight,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              DateFormat("EEE MMM d, yyyy").format(DateTime.now()),
              style: GoogleFonts.handlee().copyWith(
                fontSize: 16,
                color: const Color(0xFF002b59),
                decoration: TextDecoration.underline,
                decorationStyle: TextDecorationStyle.dashed,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Row(
          children: [
            const SizedBox(width: 100),
            DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.redAccent[100],
              ),
              child: const SizedBox(width: 1.5, height: double.infinity),
            ),
            const SizedBox(width: 5),
            DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.redAccent[100],
              ),
              child: const SizedBox(width: 1.5, height: double.infinity),
            ),
          ],
        ),
        Column(
          children: [
            const SizedBox(height: 80),
            DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.redAccent[100],
              ),
              child: const SizedBox(height: 1.5, width: double.infinity),
            ),
            const SizedBox(height: 5),
            DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.redAccent[100],
              ),
              child: const SizedBox(height: 1.5, width: double.infinity),
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) => Column(
                  children: [
                    const SizedBox(height: 60),
                    Padding(
                      padding: const EdgeInsets.only(left: 120.0),
                      child: Text(
                        _data[Random().nextInt(_data.length)],
                        style: GoogleFonts.handlee().copyWith(
                          fontSize: 24,
                          color: const Color(0xFF002b59),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.black26,
                      ),
                      child: SizedBox(
                        width: double.infinity,
                        height: 1.5,
                      ),
                    ),
                    const SizedBox(height: 10),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}