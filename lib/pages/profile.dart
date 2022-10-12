import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
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
        //Padding column keseluruhan
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Column(
                  children: [
                    Center(
                      child: Container(
                        // margin: const EdgeInsets.only(top: 20),
                        child: const CircleAvatar(
                          radius: 70,
                          backgroundImage: AssetImage('assets/tes.png'),
                        ),
                      ),
                    ),
                    Divider(
                      height: 60,
                      color: Colors.grey[800],
                      thickness: 0.5,
                      endIndent: 30,
                      indent: 20,
                    ),
                    // Divider(
                    //   height: 20,
                    //   color: Colors.grey[800],
                    //   thickness: 0.5,
                    //   indent: 20,
                    //   endIndent: 20,
                    // ),
                  ],
                ),
              ),
              Container(
                  // alignment: Alignment.centerLeft,
                  child: Column(
                children: [
                  Text(
                    'Mohammad Yoga Pratama',
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'sdfdsf',
                    textAlign: TextAlign.start,
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) => Home()));
                      },
                      child: Text('Kembali ke halaman utama'))
                ],
              )),
            ],
          ),
        ),
      ),
    );
  }
}
// child: Center(
          //   child: Column(
          //     children: [
          //       Padding(padding: EdgeInsets.only(top: 20)),
          //       CircleAvatar(
          //         backgroundImage: const AssetImage('assets/tes.png'),
          //         radius: 60,
          //       ),
          //       Divider(
          //         height: 60,
          //         color: Colors.grey[800],
          //         thickness: 0.5,
          //         endIndent: 30,
          //         indent: 30,
          //       ),
          //     ],
          //   ),
          // ),