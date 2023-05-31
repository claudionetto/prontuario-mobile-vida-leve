import 'package:flutter/material.dart';
import 'package:vida_leve/models/login_controller.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late final controller = LoginController(() {
    Navigator.pushReplacementNamed(context, "/home");
  }, () {
    setState(() {});
  });
  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(0, 168, 150, 100),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: Form(
            key: controller.formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 30.0),
                const Image(
                  height: 170.0,
                  width: 170.0,
                  image: AssetImage('images/logo_vidaleve.png'),
                ),
                const SizedBox(height: 10.0),
                const Text(
                  'VIDA LEVE',
                  style: TextStyle(
                    fontSize: 40.0,
                    color: Colors.white,
                    fontFamily: 'Montserrat',
                  ),
                ),
                const SizedBox(height: 20.0),
                const SizedBox(height: 20.0),
                const Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      ' Digite seu email:',
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                    ),
                  ],
                ),
                const SizedBox(height: 5.0),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                  validator: (value) => controller.validateEmail(value),
                  onSaved: (value) => controller.email = value!,
                  onTap: () {
                    controller.clearError();
                  },
                ),
                const SizedBox(height: 10.0),
                const Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      ' Digite sua senha:',
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                    ),
                  ],
                ),
                const SizedBox(height: 5.0),
                TextFormField(
                  obscureText: !_isPasswordVisible,
                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                        icon: Icon(
                          _isPasswordVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                        ),
                        onPressed: () {
                          setState(() {
                            _isPasswordVisible = !_isPasswordVisible;
                          });
                        },
                      ),
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                  validator: (value) => controller.validatePassword(value),
                  onSaved: (value) => controller.password = value!,
                  onTap: () {
                    controller.clearError();
                  },
                ),
                const SizedBox(height: 20),
                if (controller.error.isNotEmpty)
                  Text(
                    controller.error,
                    style: const TextStyle(
                      color: Colors.red,
                      fontSize: 20.0,
                    ),
                  ),
                const SizedBox(height: 20),
                if (controller.isLoading)
                  const CircularProgressIndicator()
                else
                  SizedBox(
                    height: 50.0,
                    width: 200.0,
                    child: FilledButton(
                        onPressed: () {
                          if (controller.validate()) {
                            controller.clearError();
                            controller.login();
                          }
                        },
                        child: const Text(
                          "Login",
                          style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Poppins"),
                        )),
                  )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
