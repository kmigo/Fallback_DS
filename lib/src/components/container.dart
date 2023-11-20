import 'package:flutter/material.dart';

class FallbackDSRenameContainer extends StatelessWidget {
  final double? height;
  final double? width;
  final Decoration? decoration;
  final Widget child;
  final Color? color;
  const FallbackDSRenameContainer({super.key,required this.child,this.width,this.height,this.decoration,this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: decoration,
      color: color,
      height: height,
      width: width,
      child: child,
    );
  }
}