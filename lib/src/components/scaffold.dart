import 'package:fallback_ds/fallback_ds.dart';
import 'package:flutter/material.dart';




class FallbackDSRenameScaffold extends StatelessWidget {
  final PreferredSizeWidget? appBar;
  final Widget? floatingActionButton;
  final Widget body;
  const FallbackDSRenameScaffold({super.key, required this.body, this.appBar,this.floatingActionButton});

  @override
  Widget build(BuildContext context) {
    final theme = universalSettings.serializer<UniversalSettingsModel>(
        fromMap: UniversalSettingsModel.fromMap);
    return ValueListenableBuilder(
      valueListenable: ThemeModel.instance.theme,
      builder: (context, snapTheme, _) {
        return Scaffold(
          backgroundColor: snapTheme == ThemeEnum.dark
              ? theme.color.background['scaffoldDark']!.color
              : theme.color.background['scaffoldLight']!.color,
          appBar: appBar,
          body: body,
          floatingActionButton: floatingActionButton,
        );
      }
    );
  }
}
