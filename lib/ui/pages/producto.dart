import 'package:carrito_getx_03/domain/controller/controladorcarrito.dart';
import 'package:carrito_getx_03/ui/pages/carrito.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Producto extends StatelessWidget {
  const Producto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ControlarCarrito controlc = Get.find();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Producto'),
        actions: [
          IconButton(
              onPressed: () {
                Get.to(() => const Carrtio());
              },
              icon: const Icon(Icons.shopping_bag_outlined))
        ],
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  onPressed: () {
                    controlc.remsalchi();
                  },
                  icon: const Icon(Icons.remove_circle)),
              const Text('Salchipapa Familiar'),
              IconButton(
                  onPressed: () {
                    controlc.addsalchi();
                  },
                  icon: const Icon(Icons.add_circle)),
              Obx(() => Text('${controlc.salchi}')),
            ],
          )
        ],
      ),
    );
  }
}
