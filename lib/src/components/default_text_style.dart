import 'package:flutter/material.dart';





class FallbackDSRenameDefaultTextStyle extends InheritedWidget {
  final TextStyle style;

  const FallbackDSRenameDefaultTextStyle({super.key, required Widget child, required this.style})
      : super( child: child);

  @override
  bool updateShouldNotify(FallbackDSRenameDefaultTextStyle oldWidget) {
    return style != oldWidget.style;
  }

  static FallbackDSRenameDefaultTextStyle? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<FallbackDSRenameDefaultTextStyle>();
  }
}
