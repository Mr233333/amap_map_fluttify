// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import, unused_local_variable, dead_code, unnecessary_cast
//////////////////////////////////////////////////////////
// GENERATED BY FLUTTIFY. DO NOT EDIT IT.
//////////////////////////////////////////////////////////

import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_map_fluttify/src/android/android.export.g.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'package:foundation_fluttify/foundation_fluttify.dart';
import 'package:core_location_fluttify/core_location_fluttify.dart';

class _MAAnnotation_SUB extends NSObject with MAAnnotation {}

mixin MAAnnotation on NSObject {
  

  static MAAnnotation subInstance() => _MAAnnotation_SUB();

  Future<CLLocationCoordinate2D> get_coordinate() async {
    final __result__ = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MAAnnotation::get_coordinate", {'refId': refId});
    kNativeObjectPool.add(CLLocationCoordinate2D()..refId = __result__..tag__ = 'amap_map_fluttify');
    return CLLocationCoordinate2D()..refId = __result__..tag__ = 'amap_map_fluttify';
  }
  
  Future<String> get_title() async {
    final __result__ = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MAAnnotation::get_title", {'refId': refId});
  
    return __result__;
  }
  
  Future<String> get_subtitle() async {
    final __result__ = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MAAnnotation::get_subtitle", {'refId': refId});
  
    return __result__;
  }
  

  Future<void> set_title(String title) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('MAAnnotation::set_title', {'refId': refId, "title": title});
  
  
  }
  
  Future<void> set_subtitle(String subtitle) async {
    await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('MAAnnotation::set_subtitle', {'refId': refId, "subtitle": subtitle});
  
  
  }
  

  
  Future<void> setCoordinate(CLLocationCoordinate2D newCoordinate) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: MAAnnotation@$refId::setCoordinate([])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('MAAnnotation::setCoordinate', {"newCoordinate": newCoordinate.refId, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = __result__;
    
      return __return__;
    }
  }
  
}

extension MAAnnotation_Batch on List<MAAnnotation> {
  //region methods
  
  Future<List<void>> setCoordinate_batch(List<CLLocationCoordinate2D> newCoordinate) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('MAAnnotation::setCoordinate_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"newCoordinate": newCoordinate[__i__].refId, "refId": this[__i__].refId}]);
  
  
    // convert native result to dart side object
    if (resultBatch == null) {
      return null;
    } else {
      final typedResult = (resultBatch as List).cast<String>().map((__result__) => __result__).toList();
    
      return typedResult;
    }
  }
  
  //endregion
}