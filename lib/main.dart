import 'package:carrito_getx_03/domain/controller/controladorcarrito.dart';
import 'package:carrito_getx_03/ui/app.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  Get.put(ControlarCarrito());
  runApp(const App());
}
