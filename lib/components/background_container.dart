import 'dart:ui';

import 'package:Apollo/components/bottom_navigation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BackgroundContainer extends StatelessWidget {
  BackgroundContainer(
      {this.assetPath,
      @required this.child,
      this.bottomNavigationBar,
      this.linearGradient,
      this.imageUrl,
      this.appBar,
      this.blurredBackground = false,
      this.includeAboutAustraliaAppbar = false});
  final String assetPath;
  final Widget child;
  final BottomNavigation bottomNavigationBar;
  final Widget linearGradient;
  final String imageUrl;
  final AppBar appBar;
  final bool blurredBackground;
  final bool includeAboutAustraliaAppbar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBar,
        bottomNavigationBar: bottomNavigationBar,
        body: SafeArea(
          child: Stack(children: [
            imageUrl != null || assetPath != null
                ? Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: imageUrl != null
                                ? NetworkImage(imageUrl)
                                : AssetImage(assetPath),
                            fit: BoxFit.cover,
                            alignment: Alignment.topCenter)),
                    child: blurredBackground == true
                        ? BackdropFilter(
                            filter: new ImageFilter.blur(
                                sigmaX: 10.0, sigmaY: 10.0),
                            child: new Container(
                              decoration: new BoxDecoration(
                                  color: Colors.white.withOpacity(0.0)),
                            ))
                        : SizedBox(),
                  )
                : SizedBox(),
            linearGradient == null ? SizedBox() : linearGradient,
            this.child,
          ]),
        ));
  }
}
