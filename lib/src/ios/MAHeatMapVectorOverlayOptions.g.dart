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

class MAHeatMapVectorOverlayOptions extends NSObject  {
  //region constants
  static const String name__ = 'MAHeatMapVectorOverlayOptions';

  
  //endregion

  //region creators
  static Future<MAHeatMapVectorOverlayOptions> create__() async {
    final int refId = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('ObjectFactory::createMAHeatMapVectorOverlayOptions');
    final object = MAHeatMapVectorOverlayOptions()..refId = refId..tag__ = 'amap_map_fluttify';
  
    kNativeObjectPool.add(object);
    return object;
  }
  
  static Future<List<MAHeatMapVectorOverlayOptions>> create_batch__(int length) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
    final List resultBatch = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('ObjectFactory::create_batchMAHeatMapVectorOverlayOptions', {'length': length});
  
    final List<MAHeatMapVectorOverlayOptions> typedResult = resultBatch.map((result) => MAHeatMapVectorOverlayOptions()..refId = result..tag__ = 'amap_map_fluttify').toList();
    kNativeObjectPool.addAll(typedResult);
    return typedResult;
  }
  
  //endregion

  //region getters
  Future<MAHeatMapType> get_type() async {
    final __result__ = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MAHeatMapVectorOverlayOptions::get_type", {'refId': refId});
  
    return (__result__ as int).toMAHeatMapType();
  }
  
  Future<bool> get_visible() async {
    final __result__ = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MAHeatMapVectorOverlayOptions::get_visible", {'refId': refId});
  
    return __result__;
  }
  
  Future<List<MAHeatMapVectorNode>> get_inputNodes() async {
    final __result__ = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MAHeatMapVectorOverlayOptions::get_inputNodes", {'refId': refId});
    kNativeObjectPool.addAll((__result__ as List).cast<int>().map((__it__) => MAHeatMapVectorNode()..refId = __it__..tag__ = 'amap_map_fluttify').toList());
    return (__result__ as List).cast<int>().map((__it__) => MAHeatMapVectorNode()..refId = __it__..tag__ = 'amap_map_fluttify').toList();
  }
  
  Future<double> get_size() async {
    final __result__ = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MAHeatMapVectorOverlayOptions::get_size", {'refId': refId});
  
    return __result__;
  }
  
  Future<double> get_gap() async {
    final __result__ = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MAHeatMapVectorOverlayOptions::get_gap", {'refId': refId});
  
    return __result__;
  }
  
  Future<List<UIColor>> get_colors() async {
    final __result__ = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MAHeatMapVectorOverlayOptions::get_colors", {'refId': refId});
    kNativeObjectPool.addAll((__result__ as List).cast<int>().map((__it__) => UIColor()..refId = __it__..tag__ = 'amap_map_fluttify').toList());
    return (__result__ as List).cast<int>().map((__it__) => UIColor()..refId = __it__..tag__ = 'amap_map_fluttify').toList();
  }
  
  Future<List<num>> get_startPoints() async {
    final __result__ = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MAHeatMapVectorOverlayOptions::get_startPoints", {'refId': refId});
  
    return (__result__ as List).cast<num>();
  }
  
  Future<double> get_opacity() async {
    final __result__ = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MAHeatMapVectorOverlayOptions::get_opacity", {'refId': refId});
  
    return __result__;
  }
  
  Future<int> get_maxIntensity() async {
    final __result__ = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MAHeatMapVectorOverlayOptions::get_maxIntensity", {'refId': refId});
  
    return __result__;
  }
  
  Future<double> get_minZoom() async {
    final __result__ = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MAHeatMapVectorOverlayOptions::get_minZoom", {'refId': refId});
  
    return __result__;
  }
  
  Future<double> get_maxZoom() async {
    final __result__ = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MAHeatMapVectorOverlayOptions::get_maxZoom", {'refId': refId});
  
    return __result__;
  }
  
  //endregion

  //region setters
  Future<void> set_type(MAHeatMapType type) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('MAHeatMapVectorOverlayOptions::set_type', {'refId': refId, "type": type.toValue()});
  
  
  }
  
  Future<void> set_visible(bool visible) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('MAHeatMapVectorOverlayOptions::set_visible', {'refId': refId, "visible": visible});
  
  
  }
  
  Future<void> set_inputNodes(List<MAHeatMapVectorNode> inputNodes) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('MAHeatMapVectorOverlayOptions::set_inputNodes', {'refId': refId, "inputNodes": inputNodes.map((it) => it.refId).toList()});
  
  
  }
  
  Future<void> set_size(double size) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('MAHeatMapVectorOverlayOptions::set_size', {'refId': refId, "size": size});
  
  
  }
  
  Future<void> set_gap(double gap) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('MAHeatMapVectorOverlayOptions::set_gap', {'refId': refId, "gap": gap});
  
  
  }
  
  Future<void> set_colors(List<UIColor> colors) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('MAHeatMapVectorOverlayOptions::set_colors', {'refId': refId, "colors": colors.map((it) => it.refId).toList()});
  
  
  }
  
  Future<void> set_startPoints(List<num> startPoints) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('MAHeatMapVectorOverlayOptions::set_startPoints', {'refId': refId, "startPoints": startPoints});
  
  
  }
  
  Future<void> set_opacity(double opacity) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('MAHeatMapVectorOverlayOptions::set_opacity', {'refId': refId, "opacity": opacity});
  
  
  }
  
  Future<void> set_maxIntensity(int maxIntensity) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('MAHeatMapVectorOverlayOptions::set_maxIntensity', {'refId': refId, "maxIntensity": maxIntensity});
  
  
  }
  
  Future<void> set_minZoom(double minZoom) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('MAHeatMapVectorOverlayOptions::set_minZoom', {'refId': refId, "minZoom": minZoom});
  
  
  }
  
  Future<void> set_maxZoom(double maxZoom) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('MAHeatMapVectorOverlayOptions::set_maxZoom', {'refId': refId, "maxZoom": maxZoom});
  
  
  }
  
  //endregion

  //region methods
  
  //endregion
}

extension MAHeatMapVectorOverlayOptions_Batch on List<MAHeatMapVectorOverlayOptions> {
  //region getters
  Future<List<MAHeatMapType>> get_type_batch() async {
    final resultBatch = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MAHeatMapVectorOverlayOptions::get_type_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<int>().map((__result__) => (__result__ as int).toMAHeatMapType()).toList();
  
    return typedResult;
  }
  
  Future<List<bool>> get_visible_batch() async {
    final resultBatch = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MAHeatMapVectorOverlayOptions::get_visible_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<bool>().map((__result__) => __result__).toList();
  
    return typedResult;
  }
  
  Future<List<List<MAHeatMapVectorNode>>> get_inputNodes_batch() async {
    final resultBatch = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MAHeatMapVectorOverlayOptions::get_inputNodes_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<int>().map((__result__) => (__result__ as List).cast<int>().map((__it__) => MAHeatMapVectorNode()..refId = __it__..tag__ = 'amap_map_fluttify').toList()).toList();
    kNativeObjectPool.addAll(typedResult.expand((e) => e));
    return typedResult;
  }
  
  Future<List<double>> get_size_batch() async {
    final resultBatch = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MAHeatMapVectorOverlayOptions::get_size_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<double>().map((__result__) => __result__).toList();
  
    return typedResult;
  }
  
  Future<List<double>> get_gap_batch() async {
    final resultBatch = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MAHeatMapVectorOverlayOptions::get_gap_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<double>().map((__result__) => __result__).toList();
  
    return typedResult;
  }
  
  Future<List<List<UIColor>>> get_colors_batch() async {
    final resultBatch = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MAHeatMapVectorOverlayOptions::get_colors_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<int>().map((__result__) => (__result__ as List).cast<int>().map((__it__) => UIColor()..refId = __it__..tag__ = 'amap_map_fluttify').toList()).toList();
    kNativeObjectPool.addAll(typedResult.expand((e) => e));
    return typedResult;
  }
  
  Future<List<List<num>>> get_startPoints_batch() async {
    final resultBatch = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MAHeatMapVectorOverlayOptions::get_startPoints_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<List<num>>().map((__result__) => (__result__ as List).cast<num>()).toList();
  
    return typedResult;
  }
  
  Future<List<double>> get_opacity_batch() async {
    final resultBatch = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MAHeatMapVectorOverlayOptions::get_opacity_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<double>().map((__result__) => __result__).toList();
  
    return typedResult;
  }
  
  Future<List<int>> get_maxIntensity_batch() async {
    final resultBatch = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MAHeatMapVectorOverlayOptions::get_maxIntensity_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<int>().map((__result__) => __result__).toList();
  
    return typedResult;
  }
  
  Future<List<double>> get_minZoom_batch() async {
    final resultBatch = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MAHeatMapVectorOverlayOptions::get_minZoom_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<double>().map((__result__) => __result__).toList();
  
    return typedResult;
  }
  
  Future<List<double>> get_maxZoom_batch() async {
    final resultBatch = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MAHeatMapVectorOverlayOptions::get_maxZoom_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<double>().map((__result__) => __result__).toList();
  
    return typedResult;
  }
  
  //endregion

  //region setters
  Future<void> set_type_batch(List<MAHeatMapType> type) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('MAHeatMapVectorOverlayOptions::set_type_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "type": type[__i__].toValue()}]);
  
  
  }
  
  Future<void> set_visible_batch(List<bool> visible) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('MAHeatMapVectorOverlayOptions::set_visible_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "visible": visible[__i__]}]);
  
  
  }
  
  Future<void> set_inputNodes_batch(List<List<MAHeatMapVectorNode>> inputNodes) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('MAHeatMapVectorOverlayOptions::set_inputNodes_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "inputNodes": inputNodes[__i__].map((it) => it.refId).toList()}]);
  
  
  }
  
  Future<void> set_size_batch(List<double> size) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('MAHeatMapVectorOverlayOptions::set_size_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "size": size[__i__]}]);
  
  
  }
  
  Future<void> set_gap_batch(List<double> gap) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('MAHeatMapVectorOverlayOptions::set_gap_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "gap": gap[__i__]}]);
  
  
  }
  
  Future<void> set_colors_batch(List<List<UIColor>> colors) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('MAHeatMapVectorOverlayOptions::set_colors_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "colors": colors[__i__].map((it) => it.refId).toList()}]);
  
  
  }
  
  Future<void> set_startPoints_batch(List<List<num>> startPoints) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('MAHeatMapVectorOverlayOptions::set_startPoints_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "startPoints": startPoints[__i__]}]);
  
  
  }
  
  Future<void> set_opacity_batch(List<double> opacity) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('MAHeatMapVectorOverlayOptions::set_opacity_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "opacity": opacity[__i__]}]);
  
  
  }
  
  Future<void> set_maxIntensity_batch(List<int> maxIntensity) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('MAHeatMapVectorOverlayOptions::set_maxIntensity_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "maxIntensity": maxIntensity[__i__]}]);
  
  
  }
  
  Future<void> set_minZoom_batch(List<double> minZoom) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('MAHeatMapVectorOverlayOptions::set_minZoom_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "minZoom": minZoom[__i__]}]);
  
  
  }
  
  Future<void> set_maxZoom_batch(List<double> maxZoom) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('MAHeatMapVectorOverlayOptions::set_maxZoom_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "maxZoom": maxZoom[__i__]}]);
  
  
  }
  
  //endregion

  //region methods
  
  //endregion
}