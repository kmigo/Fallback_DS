import 'package:fallback_ds/fallback_ds.dart';
import 'package:fallback_ds/models/template_model.dart';
import 'package:fallback_ds/template/template_card_widget.dart';
import 'package:flutter/material.dart';

export 'scaffold.dart';
export 'text.dart';
export 'default_text_style.dart';
export 'app_bar.dart';
export 'container.dart';


final templates = [
  TemplateWidgetModel(title: 'Text',  widget: (params) => FallbackDSRenameText(text: params['text']!.value,), params: {
    'text':TemplateWidgetParam(title: 'text',type: 'Widget',child: ([v]) =>  TextFormField(), value: 'olá',),
  })
];


class GalleryExamples extends StatefulWidget {
  const GalleryExamples({super.key});

  @override
  State<GalleryExamples> createState() => _GalleryExamplesState();
}

class _GalleryExamplesState extends State<GalleryExamples> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        title: Text('Examples',
        ),),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: const  SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Number of columns in the grid
            mainAxisSpacing: 10, // Spacing between each row
            crossAxisSpacing: 10, // Spacing between each column
            childAspectRatio:  1, // Aspect ratio of each grid item
          ),
          itemCount: templates.length,
          itemBuilder: (context, index) {
            final template = templates[index];
            return CardTemplateGrid(
              model: template,
            );
          },
        ),
      ),
    );
  }
}