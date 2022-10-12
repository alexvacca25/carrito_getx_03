import 'package:get/get.dart';

class ControlarCarrito extends GetxController {
  final _salchip = 0.obs;

  int get salchi => _salchip.value;

  addsalchi() {
    _salchip.value = _salchip.value + 1;
  }

  remsalchi() {
    _salchip.value = _salchip.value - 1;
  }
}
