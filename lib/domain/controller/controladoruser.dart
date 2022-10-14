import 'package:carrito_getx_03/data/services/peticionesuser.dart';
import 'package:get/get.dart';

import '../models/user.dart';

class ControllerUser extends GetxController {
  final Rxn<List<User>> _users = Rxn<List<User>>();

  List<User>? get listauser => _users.value;

  Future<void> enviaruser(String u, String p) async {
    _users.value = await PeticionesUser.validarUser(u, p);
  }
}
