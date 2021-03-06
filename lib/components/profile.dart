import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:blobs/blobs.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';
import 'package:minimal/components/blog.dart';
import 'package:minimal/components/color.dart';
import 'package:minimal/components/typography.dart';
import 'package:minimal/ui/translate_on_hover.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              flex: 1,
              child: ClipPath(
                clipper: BlobClipper(),
                child: ImageWrapper(
                  image: 'assets/images/profile_image.png',
                  fit: BoxFit.contain,
                  height: 300,
                  width: 300,
                  margin: EdgeInsets.all(20),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(height: 20),
                    Text('My name is Pitter Jhonson .',
                        style: headlineFourTextStyle),
                    SizedBox(height: 8),
                    Text("I'm Professional web Developer having 10 Years Of Experience.",
                        style: headlineSecondaryTextStyle),
                    SizedBox(height: 8),
                    Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer tellus est, finibus ut congue sed, faucibus ut dui. Sed congue nisl dolor, id dapibus leo elementum posuere. Ut aliquam metus quis laoreet elementum. In hac habitasse platea dictumst. In hac habitasse platea dictumst.',
                        style: headlineBodyTextStyle,
                        textAlign: TextAlign.justify,
                    ),
                    Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer tellus est, finibus ut congue sed, faucibus ut dui. Sed congue nisl dolor, id dapibus leo elementum posuere. Ut aliquam metus quis laoreet elementum. In hac habitasse platea dictumst. In hac habitasse platea dictumst.',
                      style: headlineBodyTextStyle,
                      textAlign: TextAlign.justify,
                    ),
                    Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer tellus est, finibus ut congue sed, faucibus ut dui. Sed congue nisl dolor, id dapibus leo elementum posuere. Ut aliquam metus quis laoreet elementum. In hac habitasse platea dictumst. In hac habitasse platea dictumst.',
                      style: headlineBodyTextStyle,
                      textAlign: TextAlign.justify,
                    ),

                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
