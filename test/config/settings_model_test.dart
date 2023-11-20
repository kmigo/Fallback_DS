import 'package:fallback_ds/models/settings_model.dart';
import 'package:flutter_test/flutter_test.dart';

import '../config.dart';

void main(){

  test('DSFontModel', () {
   final ds = DSFontModel.fromMap(dsMock['font'] as dynamic);
   ds.toMap();

  });
  test('DSCOLOR',(){
    final ds = DSColorModel.fromMap(dsMock['color'] as dynamic);
    ds.toMap();

  });
  test('DSSHADOW',(){
    final ds = DSShadow.fromMap(dsMock['shadow'] as dynamic);
    ds.toMap();
  });

  test('UniversalSettingsModel',(){
    final ds = UniversalSettingsModel.fromMap(dsMock as dynamic);
    ds.toMap();
  });
}