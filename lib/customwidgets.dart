import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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

iniTextfield(txt, pw) {
  return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(20, 520, 20, 20),
      child: Column(children: [
        TextField(
          obscureText: pw,
          decoration: InputDecoration(
            hintText: txt,
            prefixIcon: Icon(Icons.person),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
      ]));
}

iniAppBar() {
  return AppBar(
    backgroundColor: Color(0xFFffffff),
    bottomOpacity: 0.0,
    elevation: 0.0,
    // title: Padding(
    //   padding: const EdgeInsets.only(top: 2),
    //   child: const Text(
    //     'Home',
    //     style: TextStyle(
    //       color: Colors.black,
    //       fontWeight: FontWeight.bold,
    //     ),
    //   ),
    // ),
  );
}

iniSearch() {
  return Padding(
    padding: const EdgeInsets.only(left: 0, right: 0, top: 10),
    child: TextField(
      decoration: InputDecoration(
        hintText: 'Search',
        prefixIcon: Icon(Icons.search),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    ),
  );
}

Widget iniHeader(txt) {
  return Text(
    txt,
    style: GoogleFonts.poppins(
        fontSize: 24, fontWeight: FontWeight.w600, color: Colors.black),
  );
}

Widget iniSubHeader(txt) {
  return Text(
    txt,
    style: GoogleFonts.poppins(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: Color(0xFF000000).withOpacity(0.6)),
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