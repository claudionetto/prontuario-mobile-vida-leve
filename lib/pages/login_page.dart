import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String senha = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(0, 168, 150, 100),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Image(
              height: 170.0,
              width: 170.0,
              image: AssetImage('images/logo_vidaleve.png'),
            ),
            SizedBox(height: 10.0),
            Text(
              'VIDA LEVE',
              style: TextStyle(
                fontSize: 40.0,
                color: Colors.white,
                fontFamily: 'Montserrat',
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'Entrar',
              style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Poppins'),
            ),
            SizedBox(height: 20.0),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  ' Digite seu email:',
                  style: TextStyle(fontSize: 20.0, color: Colors.white),
                ),
              ],
            ),
            SizedBox(height: 5.0),
            TextField(
              onChanged: (text) {
                email = text;
              },
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
            SizedBox(height: 10.0),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  ' Digite sua senha:',
                  style: TextStyle(fontSize: 20.0, color: Colors.white),
                ),
              ],
            ),
            SizedBox(height: 5.0),
            Container(
              child: TextField(
                onChanged: (text) {
                  senha = text;
                },
                obscureText: true,
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            SizedBox(height: 30),
            SizedBox(
              height: 50.0,
              width: 200.0,
              child: FilledButton(
                onPressed: () {
                  if (email == 'teste@gmail.com' && senha == 'teste123') {
                    print('Correto');
                  } else {
                    print('Login invalido');
                  }
                },
                child: Text('Login'),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
