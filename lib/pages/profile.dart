import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prakmobileuts/customwidgets.dart';
import 'package:prakmobileuts/pages/home.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(24),

        //Container Keseluruhan
        child: Column(
          children: [
            //Container header
            Container(
              height: 50,
              width: 400,
              // color: Colors.red,
              child: Padding(
                padding: EdgeInsetsDirectional.only(start: 0),
                child: Row(
                  //create header profle
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) => Home()));
                      },
                      iconSize: 30,
                      icon: Icon(Icons.arrow_back),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.only(start: 110),
                      child: Text(
                        "Profile",
                        style: GoogleFonts.poppins(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            //Container circular avatar
            Container(
              // color: Colors.yellow,
              // height: 110,
              width: 400,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 0),
                    child: CircleAvatar(
                      radius: 55,
                      backgroundImage: AssetImage('assets/yoga.png'),
                    ),
                  ),
                ],
              ),
            ),

            //Container detail informasi
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                width: 350,
                // color: Colors.blue,
                child: Column(
                  children: [
                    detailProfile('Name', "Mohammad Yoga Pratama"),
                    detailProfile('Email', "yogmhmmd17@gmail.com"),
                    detailProfile('Address', "Malang, Indonesia"),
                    detailProfile('', "")
                  ],
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
