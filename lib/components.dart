import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class TabsWeb extends StatefulWidget {
  final String title;
  final String route;

  const TabsWeb({super.key, required this.title, required this.route});

  @override
  State<TabsWeb> createState() => _TabsWebState();
}

class _TabsWebState extends State<TabsWeb> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(widget.route);
      },
      child: MouseRegion(
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
                  fontSize: 25.0,
                  color: Colors.transparent,
                  decoration: TextDecoration.underline,
                  decorationThickness: 2,
                  decorationColor: Colors.tealAccent)
              : GoogleFonts.roboto(color: Colors.black, fontSize: 20.0),
          child: Text(
            widget.title,
          ),
        ),
      ),
    );
  }
}

class TabsMobile extends StatefulWidget {
  final text;
  final route;

  const TabsMobile({super.key, required this.text, required this.route});

  @override
  State<TabsMobile> createState() => _TabsMobileState();
}

class _TabsMobileState extends State<TabsMobile> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 20.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
      height: 50.0,
      minWidth: 200.0,
      color: Colors.black,
      child: Text(
        widget.text,
        style: GoogleFonts.openSans(fontSize: 20.0, color: Colors.white),
      ),
      onPressed: () {
        Navigator.of(context).pushNamed(widget.route);
      },
    );
  }
}

class SansBold extends StatelessWidget {
  final String text;
  final double size;

  const SansBold({
    super.key,
    required this.text,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.openSans(
        fontSize: size,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class Sans extends StatelessWidget {
  final String text;
  final double size;

  const Sans({super.key, required this.text, required this.size});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.openSans(fontSize: size),
    );
  }
}

class AbelCustom extends StatelessWidget {
  final text;
  final size;
  final color;
  final fontWeight;

  const AbelCustom(
      {super.key,
      required this.text,
      required this.size,
      this.color,
      this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.abel(
        fontSize: size,
        color: color ?? Colors.black,
        fontWeight: fontWeight ?? FontWeight.normal,
      ),
    );
  }
}

class TextForm extends StatelessWidget {
  final String text;
  final double containerWidth;
  final String hintText;
  final dynamic maxLines;

  const TextForm(
      {super.key,
      required this.text,
      required this.containerWidth,
      required this.hintText,
      this.maxLines});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SansBold(text: text, size: 16.0),
        SizedBox(height: 5),
        SizedBox(
          width: containerWidth,
          child: TextFormField(
            maxLines: maxLines,
            decoration: InputDecoration(
              focusedErrorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.teal),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.tealAccent, width: 2.0),
                borderRadius: BorderRadius.all(
                  Radius.circular(15.0),
                ),
              ),
              hintText: hintText,
              hintStyle: GoogleFonts.poppins(fontSize: 14),
            ),
          ),
        ),
      ],
    );
  }
}

class AnimatedCard extends StatefulWidget {
  final String imagePath;
  final text;
  final fit;
  final reverse;
  final height;
  final width;

  const AnimatedCard(
      {super.key,
      required this.imagePath,
      this.text,
      this.fit,
      this.reverse,
      this.height,
      this.width});

  @override
  State<AnimatedCard> createState() => _AnimatedCardState();
}

class _AnimatedCardState extends State<AnimatedCard>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: Duration(seconds: 4),
  )..repeat(reverse: true);

  late final Animation<Offset> _animation = Tween(
    begin: widget.reverse == true ? Offset(0, 0.08) : Offset.zero,
    end: widget.reverse == true ? Offset.zero : Offset(0, 0.08),
  ).animate(_controller);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      child: Card(
        elevation: 30,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
          side: BorderSide(color: Colors.tealAccent),
        ),
        shadowColor: Colors.tealAccent,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                widget.imagePath,
                height: widget.height ?? 200.0,
                width: widget.width ?? 200.0,
                fit: widget.fit,
              ),
              SizedBox(height: 10),
              widget.text == null
                  ? SizedBox()
                  : SansBold(text: widget.text, size: 15.0),
            ],
          ),
        ),
      ),
    );
  }
}

Container tealContainer(String text) {
  return Container(
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.tealAccent,
            style: BorderStyle.solid,
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(5.0)),
      padding: EdgeInsets.all(7.0),
      child: Text(
        text,
        style: GoogleFonts.openSans(fontSize: 15.0),
      ));
}

IconButton urlLauncher(String imgPath, String url) {
  return IconButton(
    icon: SvgPicture.asset(
      imgPath,
      colorFilter: ColorFilter.mode(Colors.black, BlendMode.srcIn),
      width: 35.0,
    ),
    onPressed: () async {
      await launchUrl(Uri.parse(url));
    },
  );
}
