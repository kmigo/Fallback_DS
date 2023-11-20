// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class TemplateWidgetParam<T>{
  final String title;
  final T value;
  final String? type;
  final Widget Function([dynamic])? child;
  TemplateWidgetParam({
    required this.title,
    required this.value,
    this.child,
    this.type,
  });
  String valueFormatted(){
    if(value is String){
      return "'$value'";
    } else if(value is Widget){
      return value.runtimeType.toString();
    } else if(value is Color){
      return 'Color($value)';
    } else if(value is int){
      return '$value';
    } else if(value is double){
      return '$value';
    } else if(value is bool){
      return '$value';
    } else if(value is List){
      return '$value';
    } else if(value is Map){
      return '$value';
    } else if(value is Function){
      return '$value';
    } else {
      return 'null';
    }
  }
}


class TemplateWidgetModel {
  final String title;
  final String? subtitle;
  final Widget Function(Map<String,TemplateWidgetParam>) widget;
  final Map<String,TemplateWidgetParam> params;
  TemplateWidgetModel({
    required this.title,
    required this.widget,
    required this.params,
    this.subtitle,
  });

  

 

}
