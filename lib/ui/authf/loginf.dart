import 'package:carrito_getx_03/domain/controller/controladorauthf.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginF extends StatefulWidget {
  const LoginF({Key? key}) : super(key: key);

  @override
  State<LoginF> createState() => _LoginFState();
}

class _LoginFState extends State<LoginF> {
  TextEditingController controluser = TextEditingController();
  TextEditingController controlpassw = TextEditingController();
  Controllerauthf controlf = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 90,
                backgroundImage: NetworkImage(
                    "https://i.pinimg.com/originals/96/f1/76/96f17624e3557c4848fa9ac94b34f245.jpg"),
              ),
              TextField(
                controller: controluser,
                decoration:
                    const InputDecoration(labelText: 'Ingrese el Usuario'),
              ),
              TextField(
                controller: controlpassw,
                obscureText: true,
                decoration:
                    const InputDecoration(labelText: 'Ingrese la Cotraseña'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(onPressed: () {}, icon: const Icon(Icons.login)),
                  const SizedBox(
                    width: 20,
                  ),
                  IconButton(
                      onPressed: () {
                        controlf
                            .registraEmail(controluser.text, controlpassw.text)
                            .then((value) {
                          if (controlf.emailf != 'Sin Registro') {
                            Get.offAllNamed('/artlist');
                          } else {
                            Get.showSnackbar(const GetSnackBar(
                              title: 'Validacion de Usuarios',
                              message: 'Usuario no Existe en la BD',
                              icon: Icon(Icons.warning_amber_sharp),
                              duration: Duration(seconds: 4),
                              backgroundColor: Colors.red,
                            ));
                          }
                        })
                        .catchError((onError){})
                        ;
                      },
                      icon: const Icon(Icons.app_registration_rounded)),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
