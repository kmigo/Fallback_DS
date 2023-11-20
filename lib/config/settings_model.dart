// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import 'settings.dart';

// final dsMock ={
//   "color": {

//     "alert": {
//       "0": {
//         "value": "#3EA124",
//         "type": "color"
//       },
//       "1": {
//         "value": "#D44040",
//         "type": "color"
//       },
//       "2": {
//         "value": "#FCA600",
//         "type": "color"
//       }
//     },
//     "neutral": {
//       "0": {
//         "value": "#ffffff",
//         "type": "color"
//       },
//       "1": {
//         "value": "#fafafa",
//         "type": "color"
//       },
//       "2": {
//         "value": "#d1d1d1",
//         "type": "color"
//       },
//       "3": {
//         "value": "#a7a7a7",
//         "type": "color"
//       },
//       "4": {
//         "value": "#545454",
//         "type": "color"
//       },
//       "5": {
//         "value": "#2a2a2a",
//         "type": "color"
//       }
//     },
//     "primary": {
//       "1": {
//         "value": "#FFACC3",
//         "type": "color"
//       },
//       "2": {
//         "value": "#FF7399",
//         "type": "color"
//       },
//       "3": {
//         "value": "#FF0046",
//         "type": "color"
//       },
//       "4": {
//         "value": "#CC0038",
//         "type": "color"
//       },
//       "5": {
//         "value": "#99002A",
//         "type": "color"
//       },
//       "selected": {
//         "value": "#FF73994D",
//         "type": "color"
//       },
//       "fromGradient": {
//         "value": "#EB3634",
//         "type": "color"
//       },
//       "toGradient": {
//         "value": "#B4135B",
//         "type": "color"
//       }
//     },
//     "secondary": {
//       "1": {
//         "value": "#ffffff",
//         "type": "color"
//       },
//       "2": {
//         "value": "#F6F6F6",
//         "type": "color"
//       },
//       "3": {
//         "value": "#CDCDCD",
//         "type": "color"
//       },
//       "4": {
//         "value": "#4C5053",
//         "type": "color"
//       },
//       "5": {
//         "value": "#25282A",
//         "type": "color"
//       },
//       "selected": {
//         "value": "#CDCDCD4D",
//         "type": "color"
//       },
//       "fromGradient": {
//         "value": "#EBEBEBEB",
//         "type": "color"
//       },
//       "toGradient": {
//         "value": "#FFFFFFFF",
//         "type": "color"
//       },
//       "fromGradientDisabled": {
//         "value": "#FFFFFFFF",
//         "type": "color"
//       },
//       "toGradientDisabled": {
//         "value": "#FFFAFAFA",
//         "type": "color"
//       }
//     },
//     "dark": {
//       "1": {
//         "value": "#25282A05",
//         "type": "color"
//       },
//       "2": {
//         "value": "#25282A33",
//         "type": "color"
//       },
//       "3": {
//         "value": "#25282A5C",
//         "type": "color"
//       },
//       "4": {
//         "value": "#25282A99",
//         "type": "color"
//       },
//       "5": {
//         "value": "#25282AEB",
//         "type": "color"
//       },
//       "selected": {
//         "value": "#25282A0D",
//         "type": "color"
//       }
//     },
//     "light": {
//       "1": {
//         "value": "#FFFFFF14",
//         "type": "color"
//       },
//       "2": {
//         "value": "#FFFFFF40",
//         "type": "color"
//       },
//       "3": {
//         "value": "#FFFFFF73",
//         "type": "color"
//       },
//       "4": {
//         "value": "#FFFFFFBF",
//         "type": "color"
//       },
//       "5": {
//         "value": "#FFFFFFF5",
//         "type": "color"
//       },
//       "selected": {
//         "value": "#FFFFFF33",
//         "type": "color"
//       }
//     },
//     "error": {
//       "1": {
//         "value": "#FAE1E1",
//         "type": "color"
//       },
//       "2": {
//         "value": "#E37171",
//         "type": "color"
//       },
//       "3": {
//         "value": "#D44040",
//         "type": "color"
//       },
//       "4": {
//         "value": "#861515",
//         "type": "color"
//       },
//       "5": {
//         "value": "#521414",
//         "type": "color"
//       },
//       "selected": {
//         "value": "#D4404033",
//         "type": "color"
//       }
//     },
//     "success": {
//       "1": {
//         "value": "#B9FFA8",
//         "type": "color"
//       },
//       "2": {
//         "value": "#80FF60",
//         "type": "color"
//       },
//       "3": {
//         "value": "#5ED440",
//         "type": "color"
//       },
//       "4": {
//         "value": "#3EA124",
//         "type": "color"
//       },
//       "5": {
//         "value": "#236E10",
//         "type": "color"
//       },
//       "selected": {
//         "value": "#5ED44033",
//         "type": "color"
//       }
//     },
//     "info": {
//       "1": {
//         "value": "#EFFAFF",
//         "type": "color"
//       },
//       "2": {
//         "value": "#A8E7FF",
//         "type": "color"
//       },
//       "3": {
//         "value": "#60D4FF",
//         "type": "color"
//       },
//       "4": {
//         "value": "#40ACD4",
//         "type": "color"
//       },
//       "5": {
//         "value": "#247FA1",
//         "type": "color"
//       },
//       "selected": {
//         "value": "#60D4FF33",
//         "type": "color"
//       }
//     },
//     "background": {
//       "1": {
//         "value": "#EBEBEB",
//         "type": "color"
//       }
//     }
//   },
//   "font": {
//     "style": {
//       "title":{
//         "1":{
//           "fontFamily": {
//             "value": "font.family.title"
//           },
//           "fontWeight": {
//             "value": "300"
//           }, 
//           "lineHeight": {
//             "value": "80"
//           },
          
//           "fontSize": {
//             "value": "64"
//           },
//           "letterSpacing": {
//             "value": "0"
//           },
//           "paragraphSpacing": {
//             "value": "0"
//           }
//         }
//       },
//       "headline": {
//         "1": {
//           "fontFamily": {
//             "value": "font.family.title"
//           },
//           "fontWeight": {
//             "value": "600"
//           },
//           "lineHeight": {
//             "value": "50"
//           },
//           "fontSize": {
//             "value": "44"
//           },
//           "letterSpacing": {
//             "value": "0"
//           },
//           "paragraphSpacing": {
//             "value": "0"
//           }
//         },
//         "2": {
//           "fontFamily": {
//             "value": "font.family.title"
//           },
//           "fontWeight": {
//             "value": "600"
//           },
//           "lineHeight": {
//             "value": "44"
//           },
//           "fontSize": {
//             "value": "38"
//           },
//           "letterSpacing": {
//             "value": "0"
//           },
//           "paragraphSpacing": {
//             "value": "0"
//           }
//         },
//         "3": {
//           "fontFamily": {
//             "value": "font.family.title"
//           },
//           "fontWeight": {
//             "value": "600"
//           },
//           "lineHeight": {
//             "value": "38"
//           },
//           "fontSize": {
//             "value": "32"
//           },
//           "letterSpacing": {
//             "value": "0"
//           },
//           "paragraphSpacing": {
//             "value": "0"
//           }
//         },
//         "4": {
//           "fontFamily": {
//             "value": "font.family.title"
//           },
//           "fontWeight": {
//             "value": "600"
//           },
//           "lineHeight": {
//             "value": "32"
//           },
//           "fontSize": {
//             "value": "28"
//           },
//           "letterSpacing": {
//             "value": "0.18"
//           },
//           "paragraphSpacing": {
//             "value": "0"
//           }
//         },
//         "5": {
//           "fontFamily": {
//             "value": "font.family.title"
//           },
//           "fontWeight": {
//             "value": "600"
//           },
//           "lineHeight": {
//             "value": "28"
//           },
//           "fontSize": {
//             "value": "24"
//           },
//           "letterSpacing": {
//             "value": "0.18"
//           },
//           "paragraphSpacing": {
//             "value": "0"
//           }
//         },
//         "6": {
//           "fontFamily": {
//             "value": "font.family.title"
//           },
//           "fontWeight": {
//             "value": "700"
//           },
//           "lineHeight": {
//             "value": "24"
//           },
//           "fontSize": {
//             "value": "20"
//           },
//           "letterSpacing": {
//             "value": "0.15"
//           },
//           "paragraphSpacing": {
//             "value": "0"
//           }
//         },
//         "3lineThrough": {
//           "textDecoration": {
//             "value": "lineThrough"
//           },
//           "thicknessWeight" : {
//             "value": "4"
//           },
//           "fontFamily": {
//             "value": "font.family.title"
//           },
//           "fontWeight": {
//             "value": "600"
//           },
//           "lineHeight": {
//             "value": "38"
//           },
//           "fontSize": {
//             "value": "32"
//           },
//           "letterSpacing": {
//             "value": "0"
//           },
//           "paragraphSpacing": {
//             "value": "0"
//           }
//         }
//       },
//       "subtitle": {
//         "1": {
//           "fontFamily": {
//             "value": "font.family.body"
//           },
//           "fontWeight": {
//             "value": "700"
//           },
//           "lineHeight": {
//             "value": "26"
//           },
//           "fontSize": {
//             "value": "18"
//           },
//           "letterSpacing": {
//             "value": "0.15"
//           },
//           "paragraphSpacing": {
//             "value": "0"
//           }
//         },
//         "2": {
//           "fontFamily": {
//             "value": "font.family.body"
//           },
//           "fontWeight": {
//             "value": "700"
//           },
//           "lineHeight": {
//             "value": "24"
//           },
//           "fontSize": {
//             "value": "16"
//           },
//           "letterSpacing": {
//             "value": "0.2"
//           },
//           "paragraphSpacing": {
//             "value": "0"
//           }
//         }
//       },
//       "body": {
//         "1lineThrough": {
//           "fontFamily": {
//             "value": "font.family.body"
//           },
//           "fontWeight": {
//             "value": "700"
//           },
//           "lineHeight": {
//             "value": "24"
//           },
//           "fontSize": {
//             "value": "16"
//           },
//           "letterSpacing": {
//             "value": "0.4"
//           },
//           "textDecoration": {
//             "value": "lineThrough"
//           },
//           "paragraphSpacing": {
//             "value": "16"
//           }
//         },
//         "1": {
//           "fontFamily": {
//             "value": "font.family.body"
//           },
//           "fontWeight": {
//             "value": "500"
//           },
//           "lineHeight": {
//             "value": "24"
//           },
//           "fontSize": {
//             "value": "16"
//           },
//           "letterSpacing": {
//             "value": "0.4"
//           },
//           "paragraphSpacing": {
//             "value": "16"
//           }
//         },
//         "2": {
//           "fontFamily": {
//             "value": "font.family.body"
//           },
//           "fontWeight": {
//             "value": "500"
//           },
//           "lineHeight": {
//             "value": "20"
//           },
//           "fontSize": {
//             "value": "14"
//           },
//           "letterSpacing": {
//             "value": "0.15"
//           },
//           "paragraphSpacing": {
//             "value": "12"
//           }
//         }
//       },
//       "caption": {
//         "1": {
//           "fontFamily": {
//             "value": "font.family.body"
//           },
//           "fontWeight": {
//             "value": "600"
//           },
//           "lineHeight": {
//             "value": "16"
//           },
//           "fontSize": {
//             "value": "12"
//           },
//           "letterSpacing": {
//             "value": "0.4"
//           },
//           "paragraphSpacing": {
//             "value": "8"
//           }
//         },
//         "2": {
//           "fontFamily": {
//             "value": "font.family.body"
//           },
//           "fontWeight": {
//             "value": "600"
//           },
//           "lineHeight": {
//             "value": "14"
//           },
//           "fontSize": {
//             "value": "10"
//           },
//           "letterSpacing": {
//             "value": "0.6"
//           },
//           "paragraphSpacing": {
//             "value": "6"
//           }
//         }
//       },
//       "overline": {
//         "fontFamily": {
//           "value": "font.family.title"
//         },
//         "fontWeight": {
//           "value": "600"
//         },
//         "lineHeight": {
//           "value": "16"
//         },
//         "fontSize": {
//           "value": "11"
//         },
//         "letterSpacing": {
//           "value": "1.5"
//         },
//         "paragraphSpacing": {
//           "value": "0"
//         }
//       },
//       "button": {
//         "fontFamily": {
//           "value": "font.family.body"
//         },
//         "fontWeight": {
//           "value": "600"
//         },
//         "lineHeight": {
//           "value": "16"
//         },
//         "fontSize": {
//           "value": "14"
//         },
//         "letterSpacing": {
//           "value": "1.25"
//         },
//         "paragraphSpacing": {
//           "value": "0"
//         }
//       },
//       "weekday": {
//         "fontFamily": {
//           "value": "font.family.title"
//         },
//         "fontWeight": {
//           "value": "300"
//         },
//         "lineHeight": {
//           "value": "50"
//         },
//         "fontSize": {
//           "value": "64"
//         },
//         "letterSpacing": {
//           "value": "1.25"
//         },
//         "paragraphSpacing": {
//           "value": "0"
//         }
//       },
//       "story": {
//         "1": {
//           "fontFamily": {
//             "value": "font.family.body"
//           },
//           "fontWeight": {
//             "value": "500"
//           },
//           "lineHeight": {
//             "value": "28"
//           },
//           "fontSize": {
//             "value": "28"
//           },
//           "letterSpacing": {
//             "value": "0.18"
//           },
//           "paragraphSpacing": {
//             "value": "0"
//           }
//         },
//         "2": {
//           "fontFamily": {
//             "value": "font.family.body"
//           },
//           "fontWeight": {
//             "value": "500"
//           },
//           "lineHeight": {
//             "value": "28"
//           },
//           "fontSize": {
//             "value": "20"
//           },
//           "letterSpacing": {
//             "value": "0.18"
//           },
//           "paragraphSpacing": {
//             "value": "0"
//           }
//         }
//       }
//     },
//     "family": {
//       "title": {
//         "value": "EncodeSans",
//         "type": "fontFamilies"
//       },
//       "body": {
//         "value": "EncodeSans",
//         "type": "fontFamilies"
//       }
//     }
//   },
//   "shadow": {
//     "lg": {
//       "up": {
//         "1": {
//           "value": {
//             "x": "0",
//             "y": "-2",
//             "spread": "0",
//             "color": "color.dark.selected",
//             "blur": "0"
//           },
//           "type": "boxShadow"
//         },
//         "2": {
//           "value": {
//             "x": "0",
//             "y": "-8",
//             "spread": "-2",
//             "color": "color.dark.selected",
//             "blur": "16"
//           },
//           "type": "boxShadow"
//         }
//       },
//       "left": {
//         "1": {
//           "value": {
//             "x": "-3",
//             "y": "0",
//             "blur": "2",
//             "color": "color.dark.selected",
//             "spread": "0"
//           },
//           "type": "boxShadow"
//         },
//         "2": {
//           "value": {
//             "x": "-8",
//             "y": "0",
//             "spread": "-2",
//             "color": "color.dark.selected",
//             "blur": "16"
//           },
//           "type": "boxShadow"
//         }
//       },
//       "right": {
//         "1": {
//           "value": {
//             "x": "3",
//             "y": "0",
//             "spread": "0",
//             "color": "color.dark.selected",
//             "blur": "2"
//           },
//           "type": "boxShadow"
//         },
//         "2": {
//           "value": {
//             "x": "8",
//             "y": "0",
//             "spread": "-2",
//             "color": "color.dark.selected",
//             "blur": "16"
//           },
//           "type": "boxShadow"
//         }
//       },
//       "down": {
//         "1": {
//           "value": {
//             "x": "0",
//             "y": "3",
//             "spread": "0",
//             "blur": "2",
//             "color": "color.dark.selected"
//           },
//           "type": "boxShadow"
//         },
//         "2": {
//           "value": {
//             "x": "0",
//             "y": "8",
//             "blur": "16",
//             "spread": "-2",
//             "color": "color.dark.selected"
//           },
//           "type": "boxShadow"
//         }
//       }
//     },
//     "small": {
//       "1": {
//         "value": {
//           "x": "0",
//           "y": "2",
//           "spread": "0",
//           "color": "color.dark.selected",
//           "blur": "1"
//         },
//         "type": "boxShadow"
//       },
//       "2": {
//         "value": {
//           "x": "0",
//           "y": "3",
//           "spread": "0",
//           "color": "color.dark.selected",
//           "blur": "8"
//         },
//         "type": "boxShadow"
//       }
//     }
//   },
//   "size": {
//     "2": {
//       "value": "8",
//       "type": "sizing"
//     },
//     "4": {
//       "value": "16",
//       "type": "sizing"
//     },
//     "6": {
//       "value": "24",
//       "type": "sizing"
//     },
//     "8": {
//       "value": "32",
//       "type": "sizing"
//     },
//     "base": {
//       "value": "4",
//       "type": "sizing"
//     }
//   },
//   "radius": {
//     "sm": {
//       "value": "8",
//       "type": "borderRadius"
//     },
//     "md": {
//       "value": "12",
//       "type": "borderRadius"
//     },
//     "lg": {
//       "value": "16",
//       "type": "borderRadius"
//     },
//     "xl": {
//       "value": "24",
//       "type": "borderRadius"
//     }
//   },
//   "stroke": {
//     "line": {
//       "value": "1",
//       "type": "borderWidth"
//     },
//     "bold": {
//       "value": "2",
//       "type": "borderWidth"
//     },
//     "thick": {
//       "value": "3",
//       "type": "borderWidth"
//     }
//   }
// };


class DSKeyValueModel extends Equatable {
  final String value;
  final String type;

  const DSKeyValueModel({required this.value,required this.type});
  get isColor => type == 'color';
  Color get  color {
    // from hexcolor
    final hexCode = value.replaceAll('#', '');
    if(hexCode.length == 6){
      return Color(int.parse('FF$hexCode', radix: 16));
    }else if(hexCode.length == 8){
      return Color(int.parse(hexCode, radix: 16));
    }
    throw Exception('Invalid hexCode');
  }  

  @override
  List<Object> get props => [value, type];

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': value,
      'type': type,
    };
  }

  factory DSKeyValueModel.fromMap(Map<String, dynamic> map) {
    return DSKeyValueModel(
      value: map['value'] as String,
      type: map['type'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory DSKeyValueModel.fromJson(String source) => DSKeyValueModel.fromMap(json.decode(source) as Map<String, dynamic>);
}



class DSFontModel extends Equatable {
  
  final DSFontStyle style;
  final DSFontFamily family;
  const DSFontModel({
    required this.style,
    required this.family
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'style': style.toMap(),
      'family': family.toMap(),
    };
  }

  factory DSFontModel.fromMap(Map<String, dynamic> map) {
    return DSFontModel(
      style: DSFontStyle.fromMap(map['style'] as Map<String,dynamic>),
      family: DSFontFamily.fromMap(map['family'] as Map<String,dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory DSFontModel.fromJson(String source) => DSFontModel.fromMap(json.decode(source) as Map<String, dynamic>);
  
  @override
  List<Object?> get props => [style, family];
}

class DSFontFamily extends Equatable {
  final DSKeyValueModel title;
  final DSKeyValueModel body;
  const DSFontFamily({
    required this.title,
    required this.body,
  });
  @override
  List<Object?> get props => [title, body];


  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title.toMap(),
      'body': body.toMap(),
    };
  }

  factory DSFontFamily.fromMap(Map<String, dynamic> map) {
    return DSFontFamily(
      title: DSKeyValueModel.fromMap(map['title'] as Map<String,dynamic>),
      body: DSKeyValueModel.fromMap(map['body'] as Map<String,dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory DSFontFamily.fromJson(String source) => DSFontFamily.fromMap(json.decode(source) as Map<String, dynamic>);
}

class DSFontStyle extends Equatable {
  final Map<String,DSFontStyleItemValue> title;
  final Map<String,DSFontStyleItemValue> headline;
  final Map<String,DSFontStyleItemValue> subtitle;
  final Map<String,DSFontStyleItemValue> body;
  final Map<String,DSFontStyleItemValue> caption;
  final Map<String,DSFontStyleItemValue> overline;
  final Map<String,DSFontStyleItemValue> button;
  final Map<String,DSFontStyleItemValue> weekday;
  final Map<String,DSFontStyleItemValue> story;
  

  const DSFontStyle({
    required this.title,
    required this.headline,
    required this.subtitle,
    required this.body,
    required this.caption,
    required this.overline,
    required this.button,
    required this.weekday,
    required this.story,
  });
  @override
  List<Object?> get props => [];


  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title.map((key, value) => MapEntry(key, value.toMap())),
      'headline': headline.map((key, value) => MapEntry(key, value.toMap())),
      'subtitle': subtitle.map((key, value) => MapEntry(key, value.toMap())),
      'body': body.map((key, value) => MapEntry(key, value.toMap())),
      'caption': caption.map((key, value) => MapEntry(key, value.toMap())),
      'overline': overline.map((key, value) => MapEntry(key, value.toMap())),
      'button': button.map((key, value) => MapEntry(key, value.toMap())),
      'weekday': weekday.map((key, value) => MapEntry(key, value.toMap())),
      'story': story.map((key, value) => MapEntry(key, value.toMap())),
    };
  }

  factory DSFontStyle.fromMap(Map<String, dynamic> map) {
    return DSFontStyle(
      title: (map['title'] as Map).map((key, value) => MapEntry(key, DSFontStyleItemValue.fromMap(value as Map<String, dynamic>))),
      headline:(map['headline'] as Map).map((key, value) => MapEntry(key, DSFontStyleItemValue.fromMap(value as Map<String, dynamic>))),
      subtitle: (map['subtitle'] as Map).map((key, value) => MapEntry(key, DSFontStyleItemValue.fromMap(value as Map<String, dynamic>))),
      body:  (map['body'] as Map).map((key, value) => MapEntry(key, DSFontStyleItemValue.fromMap(value as Map<String, dynamic>))),
      caption: (map['caption'] as Map).map((key, value) => MapEntry(key, DSFontStyleItemValue.fromMap(value as Map<String, dynamic>))),
      overline:(map['overline'] as Map).map((key, value) => MapEntry(key, DSFontStyleItemValue.fromMap(value as Map<String, dynamic>))),
      button: (map['button'] as Map).map((key, value) => MapEntry(key, DSFontStyleItemValue.fromMap(value as Map<String, dynamic>))),
      weekday: (map['weekday'] as Map).map((key, value) => MapEntry(key, DSFontStyleItemValue.fromMap(value as Map<String, dynamic>))),
      story: (map['story'] as Map).map((key, value) => MapEntry(key, DSFontStyleItemValue.fromMap(value as Map<String, dynamic>))),
    );
  }

  String toJson() => json.encode(toMap());

  factory DSFontStyle.fromJson(String source) => DSFontStyle.fromMap(json.decode(source) as Map<String, dynamic>);
}

class DSValueModel extends Equatable {
  final String value;
  const DSValueModel({
    required this.value,
  });


  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': value,
    };
  }

  factory DSValueModel.fromMap(Map<String, dynamic>? map) {
    if(map == null) return const DSValueModel(value: '');
    return DSValueModel(
      value: map['value'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory DSValueModel.fromJson(String source) => DSValueModel.fromMap(json.decode(source) as Map<String, dynamic>);
  
  @override
  List<Object?> get props => [value];
}

class DSFontStyleItemValue extends Equatable {
  final DSValueModel fontFamily;
  final DSValueModel fontWeight;
  final DSValueModel lineHeight;
  final DSValueModel fontSize;
  final DSValueModel letterSpacing;
  final DSValueModel paragraphSpacing;
  final DSValueModel textDecoration;
  final DSValueModel thicknessWeight;

  const DSFontStyleItemValue({
    required this.fontFamily,
    required this.fontWeight,
    required this.lineHeight,
    required this.fontSize,
    required this.letterSpacing,
    required this.paragraphSpacing,
    required this.textDecoration,
    required this.thicknessWeight,
  });

  @override
  List<Object?> get props => [
        fontFamily,
        fontWeight,
        lineHeight,
        fontSize,
        letterSpacing,
        paragraphSpacing,
        textDecoration,
        thicknessWeight,
      ];
      


  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fontFamily': fontFamily.toMap(),
      'fontWeight': fontWeight.toMap(),
      'lineHeight': lineHeight.toMap(),
      'fontSize': fontSize.toMap(),
      'letterSpacing': letterSpacing.toMap(),
      'paragraphSpacing': paragraphSpacing.toMap(),
      'textDecoration': textDecoration.toMap(),
      'thicknessWeight': thicknessWeight.toMap(),
    };
  }

  factory DSFontStyleItemValue.fromMap(Map<String, dynamic> map) {
    return DSFontStyleItemValue(
      fontFamily: DSValueModel.fromMap(map['fontFamily'] ),
      fontWeight: DSValueModel.fromMap(map['fontWeight'] ),
      lineHeight: DSValueModel.fromMap(map['lineHeight'] ),
      fontSize: DSValueModel.fromMap(map['fontSize'] ),
      letterSpacing: DSValueModel.fromMap(map['letterSpacing'] ),
      paragraphSpacing: DSValueModel.fromMap(map['paragraphSpacing'] ),
      textDecoration: DSValueModel.fromMap(map['textDecoration'] ),
      thicknessWeight: DSValueModel.fromMap(map['thicknessWeight'] ),
    );
  }

  String toJson() => json.encode(toMap());

  factory DSFontStyleItemValue.fromJson(String source) => DSFontStyleItemValue.fromMap(json.decode(source) as Map<String, dynamic>);
  }


class DSColorModel extends Equatable {
  final Map<String,DSKeyValueModel> alert;
  final Map<String,DSKeyValueModel> neutral;
  final Map<String,DSKeyValueModel> primary;
  final Map<String,DSKeyValueModel> secondary;
  final Map<String,DSKeyValueModel> dark;
  final Map<String,DSKeyValueModel> light;
  final Map<String,DSKeyValueModel> error;
  final Map<String,DSKeyValueModel> success;
  final Map<String,DSKeyValueModel> info;
  final Map<String,DSKeyValueModel> background;
  final Map<String,DSKeyValueModel> text;
  const DSColorModel({
    required this.alert,
    required this.neutral,
    required this.primary,
    required this.secondary,
    required this.dark,
    required this.light,
    required this.error,
    required this.success,
    required this.info,
    required this.background,
    required this.text
  });

  @override
  List<Object?> get props => [alert, neutral, primary, secondary, dark, light, error, success, info, background,text];

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alert': alert.map((key, value) => MapEntry(key, value.toMap())),
      'neutral': neutral.map((key, value) => MapEntry(key, value.toMap())),
      'primary': primary.map((key, value) => MapEntry(key, value.toMap())),
      'secondary': secondary.map((key, value) => MapEntry(key, value.toMap())),
      'dark': dark.map((key, value) => MapEntry(key, value.toMap())),
      'light': light.map((key, value) => MapEntry(key, value.toMap())),
      'error': error.map((key, value) => MapEntry(key, value.toMap())),
      'success': success.map((key, value) => MapEntry(key, value.toMap())),
      'info': info.map((key, value) => MapEntry(key, value.toMap())),
      'text': text.map((key, value) => MapEntry(key, value.toMap())),
      'background': background.map((key, value) => MapEntry(key, value.toMap())),
    };
  }

  factory DSColorModel.fromMap(Map<String, dynamic> map) {
    return DSColorModel(
      alert: (map['alert'] as Map).map((key, value) => MapEntry(key, DSKeyValueModel.fromMap(value as Map<String, dynamic>))),
      neutral: (map['neutral'] as Map).map((key, value) => MapEntry(key, DSKeyValueModel.fromMap(value as Map<String, dynamic>))),
      primary: (map['primary'] as Map).map((key, value) => MapEntry(key, DSKeyValueModel.fromMap(value as Map<String, dynamic>))),
      secondary:(map['secondary'] as Map).map((key, value) => MapEntry(key, DSKeyValueModel.fromMap(value as Map<String, dynamic>))),
      dark:(map['dark'] as Map).map((key, value) => MapEntry(key, DSKeyValueModel.fromMap(value as Map<String, dynamic>))),
      light:(map['light'] as Map).map((key, value) => MapEntry(key, DSKeyValueModel.fromMap(value as Map<String, dynamic>))),
      error: (map['error'] as Map).map((key, value) => MapEntry(key, DSKeyValueModel.fromMap(value as Map<String, dynamic>))),
      success:(map['success'] as Map).map((key, value) => MapEntry(key, DSKeyValueModel.fromMap(value as Map<String, dynamic>))),
      info: (map['info'] as Map).map((key, value) => MapEntry(key, DSKeyValueModel.fromMap(value as Map<String, dynamic>))),
      text:(map['text'] as Map).map((key, value) => MapEntry(key, DSKeyValueModel.fromMap(value as Map<String, dynamic>))),
      background: (map['background'] as Map).map((key, value) => MapEntry(key, DSKeyValueModel.fromMap(value as Map<String, dynamic>))),
    );
  }

  String toJson() => json.encode(toMap());

  factory DSColorModel.fromJson(String source) => DSColorModel.fromMap(json.decode(source) as Map<String, dynamic>);
}

class DSShadow extends Equatable {
  final Map<String,DSShadowTypeModel> small;
  final DSShadowDirectional lg;
  const DSShadow({
    required this.small,
    required this.lg
  });
  
  @override
  List<Object?> get props => [small,lg];


 

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'small': small.map((key, value) => MapEntry(key, value.toMap())),
      'lg': lg.toMap(),
    };
  }

  factory DSShadow.fromMap(Map<String, dynamic> map) {
    return DSShadow(
      small: (map['small'] as Map).map((key, value) => MapEntry(key, DSShadowTypeModel.fromMap(value as Map<String, dynamic>))),
      lg: DSShadowDirectional.fromMap(map['lg'] as Map<String,dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory DSShadow.fromJson(String source) => DSShadow.fromMap(json.decode(source) as Map<String, dynamic>);
}


class DSShadowDirectional extends Equatable {
  final Map<String,DSShadowTypeModel> up;
  final Map<String,DSShadowTypeModel> left;
  final Map<String,DSShadowTypeModel> right;
  final Map<String,DSShadowTypeModel> down;
  const DSShadowDirectional({
    required this.up,
    required this.left,
    required this.right,
    required this.down,
  });
  @override
  List<Object?> get props => [up, left, right, down];


  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'up': up.map((key, value) => MapEntry(key, value.toMap())),
      'left': left.map((key, value) => MapEntry(key, value.toMap())),
      'right': right.map((key, value) => MapEntry(key, value.toMap())),
      'down': down.map((key, value) => MapEntry(key, value.toMap())),
    };
  }

  factory DSShadowDirectional.fromMap(Map<String, dynamic> map) {
    return DSShadowDirectional(
      up: (map['up'] as Map).map((key, value) => MapEntry(key, DSShadowTypeModel.fromMap(value as Map<String, dynamic>))),
      left: (map['left'] as Map).map((key, value) => MapEntry(key, DSShadowTypeModel.fromMap(value as Map<String, dynamic>))),
      right: (map['right'] as Map).map((key, value) => MapEntry(key, DSShadowTypeModel.fromMap(value as Map<String, dynamic>))),
      down: (map['down'] as Map).map((key, value) => MapEntry(key, DSShadowTypeModel.fromMap(value as Map<String, dynamic>))),
    );
  }

  String toJson() => json.encode(toMap());

  factory DSShadowDirectional.fromJson(String source) => DSShadowDirectional.fromMap(json.decode(source) as Map<String, dynamic>);
}
class DSShadowTypeModel {
  final DSShadowValue value;
  final String type;
  const DSShadowTypeModel({
    required this.value,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': value.toMap(),
      'type': type,
    };
  }

  factory DSShadowTypeModel.fromMap(Map<String, dynamic> map) {
    return DSShadowTypeModel(
      value: DSShadowValue.fromMap(map['value'] as Map<String,dynamic>),
      type: map['type'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory DSShadowTypeModel.fromJson(String source) => DSShadowTypeModel.fromMap(json.decode(source) as Map<String, dynamic>);
}

class DSShadowValue extends Equatable {
  final String x;
  final String y;
  final String spread;
  final String color;
  final String blur;
  const DSShadowValue({
    required this.x,
    required this.y,
    required this.spread,
    required this.color,
    required this.blur,
  });
  
  @override
  List<Object?> get props => [x, y, spread, color, blur];


  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'x': x,
      'y': y,
      'spread': spread,
      'color': color,
      'blur': blur,
    };
  }

  factory DSShadowValue.fromMap(Map<String, dynamic> map) {
    return DSShadowValue(
      x: map['x'] ,
      y: map['y'],
      spread: map['spread'] ,
      color: map['color'] ,
      blur: map['blur'],
    );
  }

  String toJson() => json.encode(toMap());

  factory DSShadowValue.fromJson(String source) => DSShadowValue.fromMap(json.decode(source) as Map<String, dynamic>);
}

class DSSTroke extends Equatable {
  final DSKeyValueModel line;
  final DSKeyValueModel bold;
  final DSKeyValueModel thick;
  const DSSTroke({
    required this.line,
    required this.bold,
    required this.thick,
  });
  @override
  List<Object?> get props => [line, bold, thick];

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'line': line.toMap(),
      'bold': bold.toMap(),
      'thick': thick.toMap(),
    };
  }

  factory DSSTroke.fromMap(Map<String, dynamic> map) {
    return DSSTroke(
      line: DSKeyValueModel.fromMap(map['line'] as Map<String,dynamic>),
      bold: DSKeyValueModel.fromMap(map['bold'] as Map<String,dynamic>),
      thick: DSKeyValueModel.fromMap(map['thick'] as Map<String,dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory DSSTroke.fromJson(String source) => DSSTroke.fromMap(json.decode(source) as Map<String, dynamic>);
}

class DSRadiusModel extends Equatable {
  final DSKeyValueModel sm;
  final DSKeyValueModel md;
  final DSKeyValueModel lg;
  final DSKeyValueModel xl;
  const DSRadiusModel({
    required this.sm,
    required this.md,
    required this.lg,
    required this.xl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sm': sm.toMap(),
      'md': md.toMap(),
      'lg': lg.toMap(),
      'xl': xl.toMap(),
    };
  }

  factory DSRadiusModel.fromMap(Map<String, dynamic> map) {
    return DSRadiusModel(
      sm: DSKeyValueModel.fromMap(map['sm'] as Map<String,dynamic>),
      md: DSKeyValueModel.fromMap(map['md'] as Map<String,dynamic>),
      lg: DSKeyValueModel.fromMap(map['lg'] as Map<String,dynamic>),
      xl: DSKeyValueModel.fromMap(map['xl'] as Map<String,dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory DSRadiusModel.fromJson(String source) => DSRadiusModel.fromMap(json.decode(source) as Map<String, dynamic>);
  
  @override
  // TODO: implement props
  List<Object?> get props => [sm, md, lg, xl];
}
enum ThemeEnum {dark,light}

class ThemeModel {
  static final ThemeModel _instance = ThemeModel._internal();
  factory ThemeModel() => _instance;
  UniversalSettingsModel? _universalSettingsModel;
  UniversalSettingsModel get themeModal {
    _universalSettingsModel ??= universalSettings.serializer<UniversalSettingsModel>(
        fromMap: UniversalSettingsModel.fromMap);
    
    return _universalSettingsModel!;
  }

  ThemeModel._internal();

  static ThemeModel get instance => _instance;
  static const light='light';
  static const dark='dark';
  final ValueNotifier<ThemeEnum>  _theme = ValueNotifier<ThemeEnum>(ThemeEnum.light);
  ValueNotifier<ThemeEnum> get theme => _theme ;
  ThemeMode get themeMode => _theme.value == ThemeEnum.light ? ThemeMode.light : ThemeMode.dark;
   setTheme([ThemeEnum? value]) {
    if(value == null){
      _theme.value = ThemeModel.instance.themeString == ThemeModel.light ? ThemeEnum.dark : ThemeEnum.light;
      return;
    }
    _theme.value = value;
  }

  String get themeString => _theme.value.name;
 
}

class UniversalSettingsModel extends Equatable {
  final Map<String,DSKeyValueModel> size;
  final DSRadiusModel radius;
  final DSSTroke stroke;
  final DSShadow shadow;
  final DSColorModel color;
  final DSFontModel font;
  const UniversalSettingsModel({
    required this.size,
    required this.stroke,
    required this.radius,
    required this.shadow,
    required this.color,
    required this.font,
  });
  @override
  List<Object?> get props => [size, stroke, radius, shadow, color, font];


  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'size': size,
      'radius': radius.toMap(),
      'stroke': stroke.toMap(),
      'shadow': shadow.toMap(),
      'color': color.toMap(),
      'font': font.toMap(),
    };
  }

  factory UniversalSettingsModel.fromMap(Map<String, dynamic> map) {
    return UniversalSettingsModel(
      size: (map['size'] as Map).map((key, value) => MapEntry(key, DSKeyValueModel.fromMap(value as Map<String, dynamic>))),
      radius: DSRadiusModel.fromMap(map['radius'] as Map<String,dynamic>),
      stroke: DSSTroke.fromMap(map['stroke'] as Map<String,dynamic>),
      shadow: DSShadow.fromMap(map['shadow'] as Map<String,dynamic>),
      color: DSColorModel.fromMap(map['color'] as Map<String,dynamic>),
      font: DSFontModel.fromMap(map['font'] as Map<String,dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory UniversalSettingsModel.fromJson(String source) => UniversalSettingsModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
