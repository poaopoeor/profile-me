import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TabsWeb extends StatefulWidget {
  final String title;
  const TabsWeb({super.key, required this.title});

  @override
  State<TabsWeb> createState() => _TabsWebState();
}

class _TabsWebState extends State<TabsWeb> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          isSelected = true;
        });
      },
      onExit: (_) {
        setState(() {
          isSelected = false;
        });
      },
      child: AnimatedDefaultTextStyle(
        duration: const Duration(milliseconds: 500),
        curve: Curves.elasticIn,
        style: isSelected
            ? GoogleFonts.oswald(
                shadows: [
                    const Shadow(
                      color: Colors.black,
                      offset: Offset(0, -10),
                    ),
                  ],
                fontSize: 27.0,
                color: Colors.transparent,
                decoration: TextDecoration.underline,
                decorationThickness: 1,
                decorationColor: Colors.black)
            : GoogleFonts.oswald(color: Colors.black, fontSize: 23.0),
        child: Text(
          widget.title,
        ),
      ),
    );
  }
}
