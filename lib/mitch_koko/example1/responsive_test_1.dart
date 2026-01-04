import 'package:flutter/material.dart';
import 'package:responsive_ui_sample_1/mitch_koko/example1/responsive/desktop_body.dart';
import 'package:responsive_ui_sample_1/mitch_koko/example1/responsive/mobile_body.dart';
import 'package:responsive_ui_sample_1/mitch_koko/example1/responsive/responsive_layout.dart';
import 'package:responsive_ui_sample_1/mitch_koko/example1/responsive/tablet_body.dart';

// https://www.youtube.com/watch?v=MrPJBAOzKTQ

class HomePage1 extends StatefulWidget {
  const HomePage1({super.key});

  @override
  State<HomePage1> createState() => _HomePage1State();
}

class _HomePage1State extends State<HomePage1> {
  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeOut,
        color: currentWidth < 600
            ? Colors.amber
            : currentWidth < 840
            ? Colors.blue
            : Colors.green,
        child: Center(
          child: Text(
            currentWidth.toStringAsFixed(2),
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
        ),
      ),
    );
  }
}

class HomePage2 extends StatefulWidget {
  const HomePage2({super.key});

  @override
  State<HomePage2> createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveLayout(
        mobileBody: MobileBody(),
        desktopBody: DesktopBody(),
        tabletBody: TabletBody(),
      ),
    );
  }
}
