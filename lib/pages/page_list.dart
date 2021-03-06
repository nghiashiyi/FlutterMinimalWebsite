import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:minimal/components/components.dart';
import 'package:minimal/components/intro.dart';
import 'package:minimal/components/profile.dart';

const String listItemTitleText = "A BETTER BLOG FOR WRITING";
const String listItemPreviewText =
    "Sed elementum tempus egestas sed sed risus. Mauris in aliquam sem fringilla ut morbi tincidunt. Placerat vestibulum lectus mauris ultrices eros. Et leo duis ut diam. Auctor neque vitae tempus […]";

class ListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Stack(
                  children: [
                    Positioned.fill(
                      child: Container(
                        color: textPrimary
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                            margin: EdgeInsets.symmetric(horizontal: 32),
                          child: MenuBar()),
                        Intro(),
                      ],
                    ),
                  ],
                ),
                Profile(),
                divider,
                Footer(),
              ],
            ),
          ),
        ],
      ),
      backgroundColor: Colors.white,
    );
  }
}
