import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:projetex/constants/colors.dart';

class BackdropFilterContaiter extends StatelessWidget {
  const BackdropFilterContaiter({Key? key, required this.child, this.margin, this.padding}) : super(key: key);
  final Widget child;
  final EdgeInsets? margin;
  final EdgeInsets? padding;
  
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(25)),
            color: kBackgroundLightColor.withOpacity(0.3)
          ),
          margin: margin,
          padding: padding,
          child: child),
      ),
    );
  }
}