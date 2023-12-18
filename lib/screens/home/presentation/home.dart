import 'dart:math';

import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'package:henry_meds_mobile/screens/home/presentation/widgets/home_app_bar.dart';
import 'package:henry_meds_mobile/screens/home/presentation/widgets/home_bottom_nav.dart';
import 'package:henry_meds_mobile/screens/home/presentation/widgets/home_drawer.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late PersistentTabController persistentTabController;
  late ConfettiController _confettiController;

  @override
  void initState() {
    super.initState();
    persistentTabController = PersistentTabController(initialIndex: 0);
    _confettiController =
        ConfettiController(duration: const Duration(seconds: 1));
  }

  @override
  void dispose() {
    super.dispose();
    _confettiController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          appBar: HomeAppBar(
              persistentTabController: persistentTabController,
              onConfettiTap: () {
                setState(() {
                  _confettiController.play();
                });
              }),
          endDrawer:
              HomeDrawer(persistentTabController: persistentTabController),
          body: HomeBottomNav(persistentTabController: persistentTabController),
          // Uncomment if we want an floating action button
          // floatingActionButton: FloatingActionButton(
          //   backgroundColor: kMainColor,
          //   shape: const CircleBorder(),
          //   onPressed: () {},
          //   child: Padding(
          //     padding: const EdgeInsets.all(13.0),
          //     child: Image.asset('assets/images/white_logo_small.webp'),
          //   ),
          // ),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: const EdgeInsets.only(top: 75.0),
            child: ConfettiWidget(
              confettiController: _confettiController,
              blastDirectionality: BlastDirectionality.explosive,
              shouldLoop: false,
              colors: const [
                Colors.green,
                Colors.blue,
                Colors.pink,
                Colors.orange,
                Colors.purple
              ], // manually specify the colors to be used
              createParticlePath: drawStar, // define a custom shape/path.
            ),
          ),
        ),
      ],
    );
  }

  /// A custom Path to paint stars.
  Path drawStar(Size size) {
    // Method to convert degree to radians
    double degToRad(double deg) => deg * (pi / 180.0);

    const numberOfPoints = 5;
    final halfWidth = size.width / 2;
    final externalRadius = halfWidth;
    final internalRadius = halfWidth / 2.5;
    final degreesPerStep = degToRad(360 / numberOfPoints);
    final halfDegreesPerStep = degreesPerStep / 2;
    final path = Path();
    final fullAngle = degToRad(360);
    path.moveTo(size.width, halfWidth);

    for (double step = 0; step < fullAngle; step += degreesPerStep) {
      path.lineTo(halfWidth + externalRadius * cos(step),
          halfWidth + externalRadius * sin(step));
      path.lineTo(halfWidth + internalRadius * cos(step + halfDegreesPerStep),
          halfWidth + internalRadius * sin(step + halfDegreesPerStep));
    }
    path.close();
    return path;
  }
}
