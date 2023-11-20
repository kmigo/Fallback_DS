import 'package:fallback_ds/template/template_example.dart';
import 'package:flutter/material.dart';

import '../models/template_model.dart';

class CardTemplateGrid extends StatelessWidget {
  final TemplateWidgetModel model;
  const CardTemplateGrid({super.key,required this.model});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => TemplateExample(model: model,))),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 5,
              offset: Offset(0, 5),
            ),
          ],
        ),
        padding: const EdgeInsets.all(5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FittedBox(
              fit: BoxFit.fitWidth,
              child: Text(model.title,style: Theme.of(context).textTheme.headlineMedium)),
            const SizedBox(height: 5,),
            FittedBox(
              fit: BoxFit.fitWidth,
              child: Text(model.subtitle ?? model.widget(model.params).runtimeType.toString(),style: Theme.of(context).textTheme.bodyMedium,)),
            Expanded(child: Center(child: model.widget(model.params))),
          ],
        ),
      ),
    );
  }
}