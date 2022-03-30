import 'package:flutter/material.dart';

import '../widgets/input_decoration.dart';

class RegistrationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [cajaMorada(size), iconoLogin(), loginForm(context)],
        ),
      ),
    );
  }

  Container cajaMorada(Size size) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [
          Color.fromARGB(255, 42, 32, 73),
          Color.fromARGB(255, 106, 49, 101),
          Color.fromARGB(255, 106, 49, 101),
          Color.fromARGB(255, 42, 32, 73),
        ]),
      ),
      width: double.infinity,
      height: size.height * 0.4,
      child: Stack(
        children: [
          Positioned(child: burbuja(), top: 90, left: 30),
          Positioned(child: burbuja(), top: -40, left: -30),
          Positioned(child: burbuja(), top: -50, right: -20),
          Positioned(child: burbuja(), bottom: -50, left: 10),
          Positioned(child: burbuja(), bottom: 120, right: 20),
          Positioned(child: burbuja(), bottom: -30, right: 10)
        ],
      ),
    );
  }

  Container burbuja() {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: const Color.fromRGBO(255, 255, 255, 0.05)),
    );
  }

  SafeArea iconoLogin() {
    return SafeArea(
      child: Container(
        margin: const EdgeInsets.only(top: 30),
        width: double.infinity,
        child: const Icon(
          Icons.person_pin,
          color: Colors.white,
          size: 100,
        ),
      ),
    );
  }

  SingleChildScrollView loginForm(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 300),
          Container(
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.symmetric(horizontal: 30),
              width: double.infinity,
              //height: 350,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 15,
                      offset: Offset(0, 5),
                    )
                  ]),
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  Text('Registro',
                      style: Theme.of(context).textTheme.headline4),
                  const SizedBox(height: 30),
                  Container(
                    child: Form(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      child: Column(
                        children: [
                          //Nombre Usuario
                          const SizedBox(height: 2),
                          TextFormField(
                            autocorrect: false,
                            decoration: InputDecorations.inputDecoration(
                                hintext: '',
                                labeltext: 'Nombre',
                                icon: const Icon(Icons.supervised_user_circle)),
                          ),
                          //Telefono Usuario
                          const SizedBox(height: 10),
                          TextFormField(
                            autocorrect: false,
                            decoration: InputDecorations.inputDecoration(
                                hintext: '',
                                labeltext: 'Telefono',
                                icon: const Icon(Icons.phone)),
                            validator: (value) {
                              String pattern = '1,2,3,4,5,6,7,8,9,0';
                              RegExp regExp = new RegExp(pattern);
                              return regExp.hasMatch(value ?? '')
                                  ? null
                                  : 'El valor ingresado no cumple con los caracteres';
                            },
                          ),
                          //Correo Usuario
                          TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            autocorrect: false,
                            decoration: InputDecorations.inputDecoration(
                                hintext: 'ejemplo.@gmail.com',
                                labeltext: 'Correo electronico',
                                icon:
                                    const Icon(Icons.alternate_email_rounded)),
                            validator: (value) {
                              String pattern =
                                  r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                              RegExp regExp = new RegExp(pattern);
                              return regExp.hasMatch(value ?? '')
                                  ? null
                                  : 'El valor ingresado no es un correo';
                            },
                          ),
                          //Contraseña Usuario
                          const SizedBox(height: 10),
                          TextFormField(
                            autocorrect: false,
                            obscureText: true,
                            decoration: InputDecorations.inputDecoration(
                                hintext: '******',
                                labeltext: 'Contraseña',
                                icon: const Icon(Icons.lock)),
                            validator: (value) {
                              return (value != null && value.length >= 6)
                                  ? null
                                  : 'La contraseña debe tener como minimo 6 caracteres';
                            },
                          ),
                          const SizedBox(height: 30),
                          MaterialButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            disabledColor: Colors.grey,
                            color: const Color.fromARGB(255, 106, 49, 101),
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 80, vertical: 15),
                              child: const Text(
                                'Siguiente',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            onPressed: () {
                              Navigator.popAndPushNamed(context, 'home');
                            },
                          )
                        ],
                      ),
                    ),
                  )
                ],
              )),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}
