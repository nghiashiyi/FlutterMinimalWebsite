import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';
import 'package:minimal/components/color.dart';
import 'package:minimal/components/components.dart';
import 'package:minimal/components/typography.dart';
import 'package:minimal/ui/translate_on_hover.dart';

class Intro extends StatefulWidget {
  @override
  _IntroState createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ImageWrapper(
              height: 200,
              image: 'assets/images/profile_image_black.jpg',
              margin: EdgeInsets.all(40),
              fit: BoxFit.contain,
            ),
            Text(
              'Hello!',
              style: headlineThirdTextStyle.merge(TextStyle(color: textAccent)),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "I'm ",
                  style:
                      headlineSecondaryTextStyle.merge(TextStyle(fontSize: 32, color: textAccent)),
                ),
                TypewriterAnimatedTextKit(
                  onTap: () {
                    print("Tap Event");
                  },
                  speed: Duration(milliseconds: 170),
                  text: [
                    "Mobile Developer",
                    "Flutter Developer",
                    "Project manager",
                  ],
                  textStyle:
                      bigHeadlineTextStyle.merge(TextStyle(color: textAccent)),
                  textAlign: TextAlign.start,
                )
              ],
            ),
            SizedBox(height: 20),
            Text(
              'Android   •   iOS   •   Website'.toUpperCase(),
              style:
                  headlineFiveTextStyle.merge(TextStyle(color: Colors.white54)),
            ),
            SizedBox(height: 20),
            Container(
              width: 300,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TranslateOnHover(
                    child: InkWell(
                        onTap: () {},
                        child: FaIcon(FontAwesomeIcons.linkedinIn,
                            color: Colors.white)),
                  ),
                  TranslateOnHover(
                    child: InkWell(
                        onTap: () {},
                        child: FaIcon(FontAwesomeIcons.at,
                            color: Colors.white)),
                  ),
                  TranslateOnHover(
                    child: InkWell(
                        onTap: () {},
                        child: FaIcon(FontAwesomeIcons.mediumM,
                            color: Colors.white)),
                  ),
                  TranslateOnHover(
                    child: InkWell(
                        onTap: () {},
                        child: FaIcon(FontAwesomeIcons.github,
                            color: Colors.white)),
                  ),
                  TranslateOnHover(
                    child: InkWell(
                        onTap: () {},
                        child: FaIcon(FontAwesomeIcons.skype,
                            color: Colors.white)),
                  ),
                ],
              ),
            ),
            SizedBox(height: 40),
            SizedBox(
              width: 100,
              height: 50,
              child: FittedBox(
                fit: BoxFit.contain,
                child: Lottie.asset(
                    'assets/json/arrow_down.json',
                ),
              ),
            ),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
