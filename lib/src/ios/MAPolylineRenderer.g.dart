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

class MAPolylineRenderer extends MAOverlayPathRenderer  {
  //region constants
  static const String name__ = 'MAPolylineRenderer';

  
  //endregion

  //region creators
  static Future<MAPolylineRenderer> create__() async {
    final int refId = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('ObjectFactory::createMAPolylineRenderer');
    final object = MAPolylineRenderer()..refId = refId..tag__ = 'amap_map_fluttify';
  
    kNativeObjectPool.add(object);
    return object;
  }
  
  static Future<List<MAPolylineRenderer>> create_batch__(int length) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
    final List resultBatch = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('ObjectFactory::create_batchMAPolylineRenderer', {'length': length});
  
    final List<MAPolylineRenderer> typedResult = resultBatch.map((result) => MAPolylineRenderer()..refId = result..tag__ = 'amap_map_fluttify').toList();
    kNativeObjectPool.addAll(typedResult);
    return typedResult;
  }
  
  //endregion

  //region getters
  Future<MAPolyline> get_polyline() async {
    final __result__ = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MAPolylineRenderer::get_polyline", {'refId': refId});
    kNativeObjectPool.add(MAPolyline()..refId = __result__..tag__ = 'amap_map_fluttify');
    return MAPolyline()..refId = __result__..tag__ = 'amap_map_fluttify';
  }
  
  Future<bool> get_is3DArrowLine() async {
    final __result__ = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MAPolylineRenderer::get_is3DArrowLine", {'refId': refId});
  
    return __result__;
  }
  
  Future<UIColor> get_sideColor() async {
    final __result__ = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MAPolylineRenderer::get_sideColor", {'refId': refId});
    kNativeObjectPool.add(UIColor()..refId = __result__..tag__ = 'amap_map_fluttify');
    return UIColor()..refId = __result__..tag__ = 'amap_map_fluttify';
  }
  
  Future<bool> get_userInteractionEnabled() async {
    final __result__ = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MAPolylineRenderer::get_userInteractionEnabled", {'refId': refId});
  
    return __result__;
  }
  
  Future<double> get_hitTestInset() async {
    final __result__ = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MAPolylineRenderer::get_hitTestInset", {'refId': refId});
  
    return __result__;
  }
  
  Future<bool> get_showRangeEnabled() async {
    final __result__ = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MAPolylineRenderer::get_showRangeEnabled", {'refId': refId});
  
    return __result__;
  }
  
  Future<MAPathShowRange> get_showRange() async {
    final __result__ = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MAPolylineRenderer::get_showRange", {'refId': refId});
    kNativeObjectPool.add(MAPathShowRange()..refId = __result__..tag__ = 'amap_map_fluttify');
    return MAPathShowRange()..refId = __result__..tag__ = 'amap_map_fluttify';
  }
  
  //endregion

  //region setters
  Future<void> set_is3DArrowLine(bool is3DArrowLine) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('MAPolylineRenderer::set_is3DArrowLine', {'refId': refId, "is3DArrowLine": is3DArrowLine});
  
  
  }
  
  Future<void> set_sideColor(UIColor sideColor) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('MAPolylineRenderer::set_sideColor', {'refId': refId, "sideColor": sideColor.refId});
  
  
  }
  
  Future<void> set_userInteractionEnabled(bool userInteractionEnabled) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('MAPolylineRenderer::set_userInteractionEnabled', {'refId': refId, "userInteractionEnabled": userInteractionEnabled});
  
  
  }
  
  Future<void> set_hitTestInset(double hitTestInset) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('MAPolylineRenderer::set_hitTestInset', {'refId': refId, "hitTestInset": hitTestInset});
  
  
  }
  
  Future<void> set_showRangeEnabled(bool showRangeEnabled) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('MAPolylineRenderer::set_showRangeEnabled', {'refId': refId, "showRangeEnabled": showRangeEnabled});
  
  
  }
  
  Future<void> set_showRange(MAPathShowRange showRange) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('MAPolylineRenderer::set_showRange', {'refId': refId, "showRange": showRange.refId});
  
  
  }
  
  //endregion

  //region methods
  
  Future<MAPolylineRenderer> initWithPolyline(MAPolyline polyline) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: MAPolylineRenderer@$refId::initWithPolyline([])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('MAPolylineRenderer::initWithPolyline', {"polyline": polyline is Ref ? (polyline as Ref)?.refId : polyline, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = MAPolylineRenderer()..refId = __result__..tag__ = 'amap_map_fluttify';
      if (__return__ is Ref) kNativeObjectPool.add(__return__);
      return __return__;
    }
  }
  
  //endregion
}

extension MAPolylineRenderer_Batch on List<MAPolylineRenderer> {
  //region getters
  Future<List<MAPolyline>> get_polyline_batch() async {
    final resultBatch = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MAPolylineRenderer::get_polyline_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<int>().map((__result__) => MAPolyline()..refId = __result__..tag__ = 'amap_map_fluttify').toList();
    kNativeObjectPool.addAll(typedResult);
    return typedResult;
  }
  
  Future<List<bool>> get_is3DArrowLine_batch() async {
    final resultBatch = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MAPolylineRenderer::get_is3DArrowLine_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<bool>().map((__result__) => __result__).toList();
  
    return typedResult;
  }
  
  Future<List<UIColor>> get_sideColor_batch() async {
    final resultBatch = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MAPolylineRenderer::get_sideColor_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<int>().map((__result__) => UIColor()..refId = __result__..tag__ = 'amap_map_fluttify').toList();
    kNativeObjectPool.addAll(typedResult);
    return typedResult;
  }
  
  Future<List<bool>> get_userInteractionEnabled_batch() async {
    final resultBatch = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MAPolylineRenderer::get_userInteractionEnabled_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<bool>().map((__result__) => __result__).toList();
  
    return typedResult;
  }
  
  Future<List<double>> get_hitTestInset_batch() async {
    final resultBatch = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MAPolylineRenderer::get_hitTestInset_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<double>().map((__result__) => __result__).toList();
  
    return typedResult;
  }
  
  Future<List<bool>> get_showRangeEnabled_batch() async {
    final resultBatch = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MAPolylineRenderer::get_showRangeEnabled_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<bool>().map((__result__) => __result__).toList();
  
    return typedResult;
  }
  
  Future<List<MAPathShowRange>> get_showRange_batch() async {
    final resultBatch = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MAPolylineRenderer::get_showRange_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<int>().map((__result__) => MAPathShowRange()..refId = __result__..tag__ = 'amap_map_fluttify').toList();
    kNativeObjectPool.addAll(typedResult);
    return typedResult;
  }
  
  //endregion

  //region setters
  Future<void> set_is3DArrowLine_batch(List<bool> is3DArrowLine) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('MAPolylineRenderer::set_is3DArrowLine_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "is3DArrowLine": is3DArrowLine[__i__]}]);
  
  
  }
  
  Future<void> set_sideColor_batch(List<UIColor> sideColor) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('MAPolylineRenderer::set_sideColor_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "sideColor": sideColor[__i__].refId}]);
  
  
  }
  
  Future<void> set_userInteractionEnabled_batch(List<bool> userInteractionEnabled) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('MAPolylineRenderer::set_userInteractionEnabled_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "userInteractionEnabled": userInteractionEnabled[__i__]}]);
  
  
  }
  
  Future<void> set_hitTestInset_batch(List<double> hitTestInset) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('MAPolylineRenderer::set_hitTestInset_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "hitTestInset": hitTestInset[__i__]}]);
  
  
  }
  
  Future<void> set_showRangeEnabled_batch(List<bool> showRangeEnabled) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('MAPolylineRenderer::set_showRangeEnabled_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "showRangeEnabled": showRangeEnabled[__i__]}]);
  
  
  }
  
  Future<void> set_showRange_batch(List<MAPathShowRange> showRange) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('MAPolylineRenderer::set_showRange_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "showRange": showRange[__i__].refId}]);
  
  
  }
  
  //endregion

  //region methods
  
  Future<List<MAPolylineRenderer>> initWithPolyline_batch(List<MAPolyline> polyline) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('MAPolylineRenderer::initWithPolyline_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"polyline": polyline[__i__].refId, "refId": this[__i__].refId}]);
  
  
    // convert native result to dart side object
    if (resultBatch == null) {
      return null;
    } else {
      final typedResult = (resultBatch as List).cast<int>().map((__result__) => MAPolylineRenderer()..refId = __result__..tag__ = 'amap_map_fluttify').toList();
      kNativeObjectPool.addAll(typedResult);
      return typedResult;
    }
  }
  
  //endregion
}