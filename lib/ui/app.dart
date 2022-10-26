import 'package:carrito_getx_03/ui/auth/login.dart';
import 'package:carrito_getx_03/ui/content/articulos/crear.dart';
import 'package:carrito_getx_03/ui/content/articulos/listar.dart';
import 'package:carrito_getx_03/ui/pages/carrito.dart';
import 'package:carrito_getx_03/ui/pages/producto.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'authf/loginf.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Carrito de compras',
      debugShowCheckedModeBanner: false,
      routes: {
        '/login': (context) => const Login(),
        '/productos': (context) => const Producto(),
        '/carrito': (context) => const Carrtio(),
        '/loginf': (context) => const LoginF(),
        '/artaddd': (context) => const AddAritculos(),
        '/artlist': (context) => const ListArticulos(),
      },
      home: const LoginF(),
    );
  }
}
