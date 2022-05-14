import 'package:flutter/material.dart';
import 'package:get/get.dart';

extension loadingExtend<T> on Future {
  Future<T> load() async {
    Get.dialog(const Center(
      child: CircularProgressIndicator(),
    ));

    whenComplete(() => Get.back());
    catchError((e) {});
    return await this;
  }
}
