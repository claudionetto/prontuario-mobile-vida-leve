import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            margin: EdgeInsets.all(5),
            currentAccountPicture: CircleAvatar(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Image.network(
                  'https://cdn.pixabay.com/photo/2020/09/13/20/24/doctor-5569298_1280.png',
                ),
              ),
            ),
            accountName: const Text("Teste"),
            accountEmail: const Text("teste@teste.com"),
          ),
          ListTile(
            leading: const Icon(Icons.ad_units_rounded),
            title: const Text("Tela Inicial"),
            onTap: () {
              Navigator.pushReplacementNamed(context, "/home");
            },
          ),
          ListTile(
            leading: const Icon(Icons.ad_units_rounded),
            title: const Text("Pacientes"),
            onTap: () {
              Navigator.pushReplacementNamed(context, "/pacientes");
            },
          ),
          ListTile(
            leading: const Icon(Icons.ad_units_rounded),
            title: const Text("Agenda"),
            onTap: () {
              Navigator.pushReplacementNamed(context, "/calendario");
            },
          ),
          Expanded(child: SizedBox()),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text("Logout"),
            onTap: () {
              Navigator.pushReplacementNamed(context, "/login");
            },
          ),
        ],
      ),
    );
  }
}
