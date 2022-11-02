import 'package:carrito_getx_03/domain/controller/controladorauthf.dart';
import 'package:carrito_getx_03/domain/controller/controladorcarrito.dart';
import 'package:carrito_getx_03/domain/controller/controladoruser.dart';
import 'package:carrito_getx_03/ui/app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  GetPlatform.isWeb
      ? await Firebase.initializeApp(
          options: const FirebaseOptions(
              apiKey: "AIzaSyDGaEd26wT8FKAn-gnRpU_Yfs-GDtP2_As",
              authDomain: "movil2022bcarrito.firebaseapp.com",
              projectId: "movil2022bcarrito",
              storageBucket: "movil2022bcarrito.appspot.com",
              messagingSenderId: "888474674841",
              appId: "1:888474674841:web:678ecd423ad44bdb2bba08"),
        )
      : await Firebase.initializeApp();
  Get.put(ControllerUser());
  Get.put(ControlarCarrito());
  Get.put(Controllerauthf());

  runApp(const App());
}
