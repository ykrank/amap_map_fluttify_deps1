// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import, unused_local_variable, dead_code, unnecessary_cast
//////////////////////////////////////////////////////////
// GENERATED BY FLUTTIFY. DO NOT EDIT IT.
//////////////////////////////////////////////////////////

import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.g.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'package:foundation_fluttify/foundation_fluttify.dart';
import 'package:core_location_fluttify/core_location_fluttify.dart';

class MAMapSize extends NSObject  {
  //region constants
  static const String name__ = 'MAMapSize';

  
  //endregion

  //region creators
  static Future<MAMapSize> create__() async {
    final int refId = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('ObjectFactory::createMAMapSize');
    final object = MAMapSize()..refId = refId..tag__ = 'amap_map_fluttify';
  
    kNativeObjectPool.add(object);
    return object;
  }
  
  static Future<List<MAMapSize>> create_batch__(int length) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
    final List resultBatch = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('ObjectFactory::create_batchMAMapSize', {'length': length});
  
    final List<MAMapSize> typedResult = resultBatch.map((result) => MAMapSize()..refId = result..tag__ = 'amap_map_fluttify').toList();
    kNativeObjectPool.addAll(typedResult);
    return typedResult;
  }
  
  //endregion

  //region getters
  Future<double> get_width() async {
    final __result__ = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MAMapSize::get_width", {'refId': refId});
  
    return __result__;
  }
  
  Future<double> get_height() async {
    final __result__ = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MAMapSize::get_height", {'refId': refId});
  
    return __result__;
  }
  
  //endregion

  //region setters
  Future<void> set_width(double width) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('MAMapSize::set_width', {'refId': refId, "width": width});
  
  
  }
  
  Future<void> set_height(double height) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('MAMapSize::set_height', {'refId': refId, "height": height});
  
  
  }
  
  //endregion

  //region methods
  
  //endregion
}

extension MAMapSize_Batch on List<MAMapSize> {
  //region getters
  Future<List<double>> get_width_batch() async {
    final resultBatch = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MAMapSize::get_width_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<double>().map((__result__) => __result__).toList();
  
    return typedResult;
  }
  
  Future<List<double>> get_height_batch() async {
    final resultBatch = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MAMapSize::get_height_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<double>().map((__result__) => __result__).toList();
  
    return typedResult;
  }
  
  //endregion

  //region setters
  Future<void> set_width_batch(List<double> width) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('MAMapSize::set_width_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "width": width[__i__]}]);
  
  
  }
  
  Future<void> set_height_batch(List<double> height) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('MAMapSize::set_height_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "height": height[__i__]}]);
  
  
  }
  
  //endregion

  //region methods
  
  //endregion
}