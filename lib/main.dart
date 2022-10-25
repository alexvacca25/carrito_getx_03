import 'package:carrito_getx_03/domain/controller/controladorauthf.dart';
import 'package:carrito_getx_03/domain/controller/controladorcarrito.dart';
import 'package:carrito_getx_03/domain/controller/controladoruser.dart';
import 'package:carrito_getx_03/ui/app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  Get.put(ControllerUser());
  Get.put(ControlarCarrito());
  Get.put(Controllerauthf());

  runApp(const App());
}
