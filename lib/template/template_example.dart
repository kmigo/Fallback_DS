import 'package:flutter/material.dart';

import '../models/template_model.dart';

class TemplateExample extends StatefulWidget {
  final TemplateWidgetModel model;
  const TemplateExample({super.key,required this.model});


  @override
  State<TemplateExample> createState() => _TemplateExampleState();

}

class _TemplateExampleState extends State<TemplateExample> {
  bool exampleVisibliity = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        title:  Text(widget.model.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(widget.model.title,style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: 5,),
              Text(widget.model.subtitle ?? widget.model.widget(widget.model.params).runtimeType.toString(),style: Theme.of(context).textTheme.bodyMedium,),
              Row(
                children: [
                  const Spacer(),
                  ElevatedButton(onPressed: (){
                    setState(() {
                      exampleVisibliity = !exampleVisibliity;
                    });
                  }, child: const Text('Example'))
                ],
              ),
              Expanded(child: Center(child: widget.model.widget(widget.model.params))),
              if(exampleVisibliity)...[
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.black87,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 5,
                        offset: Offset(0, 5),
                      ),
                    ],
                  ),
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Code:',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                      Text("${widget.model.widget(widget.model.params).runtimeType.toString()}("
                      "${widget.model.params.entries.map((e) => "${e.key}:${e.value.valueFormatted()}").join(",")});"
                      ,style: const TextStyle(
                        color: Colors.white70
                      ),),
                    ],
                  ),

                )
              ]
              
            ],
          ),
      ),
    );
  }
}