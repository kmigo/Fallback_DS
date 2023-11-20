import 'package:flutter/material.dart';

import '../../fallback_ds.dart';

class FallbackDSRenameText extends StatelessWidget {
  final Color? color;
  final String text;
  final double? _fontSize;
  final FontWeight? fontWeight;
  const FallbackDSRenameText({super.key,  required this.text, this.color,this.fontWeight}):_fontSize = null;
  const FallbackDSRenameText.body1(this.text,{super.key,this.color,this.fontWeight}):_fontSize =12;

  @override
  Widget build(BuildContext context) {
    // tenta pegar na arvore de widgets um intrinsicwidget DefaultTextStyle mais proximo
    final FallbackDSRenameDefaultTextStyle? defaultTextStyle =
        FallbackDSRenameDefaultTextStyle.of(context);

    return ValueListenableBuilder(
        valueListenable: ThemeModel.instance.theme,
        builder: (context, snapTheme, _) {
          
          TextStyle? style = defaultTextStyle?.style;
          // caso não haja nenhum style ele seta um novo style passando as cores temas default
          style ??= TextStyle(
            color: (snapTheme == ThemeEnum.dark
                ? ThemeModel.instance.themeModal.color.secondary['1']!.color
                : ThemeModel.instance.themeModal.color.secondary['5']!.color),
          );

          // se algum parametro da classe dentro lista for diferente de nulo ele cria uma copia passando todos os parametros de classe
          if ([color,fontWeight,_fontSize].any((element) => element != null)) {
            style = style.copyWith(color: color ,
            fontSize: _fontSize,
            fontWeight: fontWeight
                );
          }

          // constroi o widget
          return Text(
            text,
            style: style,
          );
        });
  }
}
