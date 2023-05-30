import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            currentAccountPicture: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.network(
                'https://media.istockphoto.com/id/1434687410/pt/foto/portrait-of-happy-and-successful-african-american-doctor-man-working-inside-office-clinic.jpg?s=2048x2048&w=is&k=20&c=xIcqkYKVJ3AuL_ogX4VhLhvH4PBJO_Fg_qHeWeW-AHY=',
              ),
            ),
            accountName: const Text(
              "Leonardo Nunes",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                
              ),
            ),
            accountEmail: const Text(
              "leonunes23@gmail.com",
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home, color: Color(0xFF00A896)),
            title: const Text("Tela Inicial",
                      style: TextStyle(
                          fontSize: 16.0,

                          fontFamily: "Poppins"),),
            onTap: () {
              Navigator.pushReplacementNamed(context, "/home");
            },
          ),
          ListTile(
            leading:
                const Icon(Icons.personal_injury, color: Color(0xFF00A896)),
            title: const Text("Pacientes",
                      style: TextStyle(
                          fontSize: 16.0,

                          fontFamily: "Poppins"),),
            onTap: () {
              Navigator.pushReplacementNamed(context, "/pacientes");
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.calendar_month,
              color: Color(0xFF00A896),
            ),
            title: const Text("Agenda",
                      style: TextStyle(
                          fontSize: 16.0,

                          fontFamily: "Poppins"),),
            onTap: () {
              Navigator.pushReplacementNamed(context, "/calendario");
            },
          ),
          const Expanded(child: SizedBox()),
          ListTile(
            leading: const Icon(Icons.logout, color: Color(0xFF00A896)),
            title: const Text("Logout",
                      style: TextStyle(
                          fontSize: 16.0,

                          fontFamily: "Poppins"),),
            onTap: () {
              Navigator.pushReplacementNamed(context, "/login");
            },
          ),
        ],
      ),
    );
  }
}
