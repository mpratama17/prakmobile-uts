import 'package:flutter/material.dart';
import 'package:prakmobileuts/pages/home.dart';
import 'package:prakmobileuts/pages/login.dart';
import 'package:prakmobileuts/pages/profile.dart';

iniDrawer(BuildContext context) {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        const UserAccountsDrawerHeader(
          decoration: BoxDecoration(
            color: const Color(0xff764abc),
          ),
          accountName: Text(
            "Mohammad Yoga Pratama",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          accountEmail: Text(
            "yogmhmmd17@gmail.com",
            style: TextStyle(
              fontWeight: FontWeight.normal,
            ),
          ),
          currentAccountPicture: CircleAvatar(
            radius: 55,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/tes.png'),
              // backgroundImage: NetworkImage(
              //     "https://images.unsplash.com/photo-1597466765990-64ad1c35dafc"),
            ),
          ),
        ),
        ListTile(
          leading: Icon(Icons.person),
          title: const Text('Profile'),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Profile()));
          },
        ),
        ListTile(
          leading: Icon(
            Icons.phone,
          ),
          title: const Text('Contact'),
          onTap: () {},
        ),
        Divider(
          height: 2,
          thickness: 1,
        ),
        ListTile(
          leading: Icon(
            Icons.logout,
          ),
          title: const Text('Logout'),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const LoginPage()));
          },
        ),
      ],
    ),
  );
}

// int _pilihanButton = 0;
//   final List<Widget> _children = [
//     // Beranda(),
//     // Reels(),
//     Home(),
//     Profile(),
//   ];
//   void _onItemTapped(int index) {
//     setState(() {
//       _pilihanButton = index;
//     });
//   }