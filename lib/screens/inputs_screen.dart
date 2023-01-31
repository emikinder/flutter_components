import 'package:flutter/material.dart';

import '../widgets/custom_input_field.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();
    final Map<String, String> formValues = {
      'firstName': 'Emiliano',
      'lastName': 'Kinderknecht',
      'email': 'emikinderk@gmail.com',
      'password': 'Emiliano',
      'role': 'admin'
    };

    return Scaffold(
      appBar: AppBar(title: const Text('Input Screen')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: myFormKey,
            child: Column(children: [
              const SizedBox(height: 10),
              CustomInputField(
                  labelText: 'Nombre',
                  hintText: 'Nombre del usuario',
                  suffixIcon: Icons.person,
                  formProperty: 'firstName',
                  formValue: formValues),
              const SizedBox(height: 30),
              CustomInputField(
                  formProperty: 'lastName',
                  formValue: formValues,
                  labelText: 'Apellido',
                  hintText: 'Apellido del usuario'),
              const SizedBox(height: 30),
              CustomInputField(
                formProperty: 'email',
                formValue: formValues,
                labelText: 'Correo',
                hintText: 'Correo del usuario',
                textInputType: TextInputType.emailAddress,
                suffixIcon: Icons.email,
              ),
              const SizedBox(height: 30),
              CustomInputField(
                  formProperty: 'password',
                  formValue: formValues,
                  labelText: 'Contraseña',
                  hintText: 'Contraseña del usuario',
                  isPassword: true),
              const SizedBox(height: 20),
              
              DropdownButtonFormField(
                value: 'Admin',
                items: const [
                  DropdownMenuItem(value: 'Admin', child: Text('Admin')),
                  DropdownMenuItem(value: 'Superuser', child: Text('Superuser')),
                  DropdownMenuItem(value: 'Developer', child: Text('Developer')),
                  DropdownMenuItem(value: 'Junior Developer', child: Text('Junior Developer')),
                ],
                onChanged:(value) {
                  print('value');
                  formValues['role'] = value ?? 'Admin';
                },
              ),

              const SizedBox(height: 20),
              ElevatedButton(
                child: const SizedBox(
                    width: double.infinity,
                    child: Center(child: Text('Guardar'))),
                onPressed: () {
                  FocusScope.of(context).requestFocus(FocusNode());

                  if (!myFormKey.currentState!.validate()) {
                    print('Form no válido');
                    return;
                  }

                  print(formValues);
                },
              ),

            ]),
          ),
        ),
      ),
    );
  }
}
