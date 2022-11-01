import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prakmobileuts/model/model.dart';
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
            backgroundColor: Colors.black,
            child: CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/yoga.png'),
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
  return PreferredSize(
    preferredSize: Size.fromHeight(70),
    child: AppBar(
      backgroundColor: Color(0xffFEFBF6),
      // backgroundColor: Color(0xffffffff),
      bottomOpacity: 0.0,
      elevation: 0.0,

      actions: [
        Padding(
          padding: EdgeInsets.only(right: 35, top: 10),
          child: GestureDetector(
              onTap: () {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => Profile()));
              },
              child: CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage('assets/yoga.png'),
              )),
        ),
      ],
      iconTheme: IconThemeData(color: Colors.black),
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

Widget iniTextCard(String nmtmpat, String alamat) {
  return Padding(
    padding: const EdgeInsets.only(left: 12.0, top: 190),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          nmtmpat,
          style: GoogleFonts.poppins(
              fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        Text(
          alamat,
          style: GoogleFonts.poppins(
              fontSize: 12, fontWeight: FontWeight.w600, color: Colors.white),
        ),
      ],
    ),
  );
}

Widget iniTextCardPopuler(String nmtmpat, String alamat) {
  return Padding(
    padding: const EdgeInsets.only(left: 12.0, top: 130),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          nmtmpat,
          style: GoogleFonts.poppins(
              fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        Text(
          alamat,
          style: GoogleFonts.poppins(
              fontSize: 12, fontWeight: FontWeight.w600, color: Colors.white),
        ),
      ],
    ),
  );
}

Widget iniCard(String gambar) {
  return Container(
    //add gradient color

    padding: const EdgeInsets.only(right: 10),
    child: ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
        bottomLeft: Radius.circular(20),
        bottomRight: Radius.circular(20),
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            end: Alignment.bottomCenter,
            begin: Alignment.topCenter,
            colors: [
              Color(0xFF000000).withOpacity(1),
              Color(0xFF000000).withOpacity(0.5),
            ],
          ),
        ),
        child: Image.asset(
          gambar,
          fit: BoxFit.cover,
          width: 220,
          height: 300,
        ),
      ),
    ),
  );
}

Widget iniCardPopuler(String gambar) {
  return Container(
    padding: const EdgeInsets.only(top: 10),
    child: ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
        bottomLeft: Radius.circular(20),
        bottomRight: Radius.circular(20),
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            end: Alignment.bottomCenter,
            begin: Alignment.topCenter,
            colors: [
              Color(0xFF000000).withOpacity(1),
              Color(0xFF000000).withOpacity(0.5),
            ],
          ),
        ),
        child: Image.asset(
          gambar,
          fit: BoxFit.cover,
          width: 390,
          height: 180,
        ),
      ),
    ),
  );
}

Widget detailProfile(txtA, TxtB) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        txtA,
        style: GoogleFonts.poppins(
            fontSize: 12,
            fontWeight: FontWeight.normal,
            color: Color(0xFF000000).withOpacity(0.6)),
      ),
      Text(
        TxtB,
        style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w600),
      ),
      Divider(
        color: Colors.black,
        thickness: 0.1,
        endIndent: 1,
      ),
      SizedBox(
        height: 10,
      )
    ],
  );
}
