import 'package:carrito_getx_03/domain/controller/controladorcarrito.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Carrtio extends StatelessWidget {
  const Carrtio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ControlarCarrito controlc = Get.find();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Facturacion'),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Salchipapa Familiar: '),
              Text('${controlc.salchi}')
            ],
          )
        ],
      ),
    );
  }
}
