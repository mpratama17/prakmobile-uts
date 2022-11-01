import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prakmobileuts/customwidgets.dart';

import '../model/model.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFEFBF6),
      appBar: iniAppBar(),
      drawer: iniDrawer(context),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
          child: Container(
            // color: Colors.green,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Container Header
                Container(
                  // color: Colors.amber,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //Text Header
                      iniHeader("Hari ini \nMau kemana?"),

                      //Text SubHeader
                      iniSubHeader(
                          "temukan tempat wisata \nterbaik di sekitarmu"),
                      const SizedBox(
                        height: 20,
                      ),
                      //Text "Recommended"
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Recommended",
                          style: GoogleFonts.poppins(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  // color: Colors.blue,
                  height: 250,
                  width: double.infinity,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: page == null ? 0 : page.length,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => page[index]));
                        },
                        child: Container(
                          child: Stack(
                            //Container untuk gambar
                            children: [
                              iniCard(gambar[index]),
                              iniTextCard(nmtmpat[index], lokasi[index]),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),

                //Container Kategori terpopuler
                Container(
                  // color: Colors.amber,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //Text "Kategori Terpopuler"
                      SizedBox(
                        height: 24,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Kategori Terpopuler",
                          style: GoogleFonts.poppins(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      //Container untuk kategori
                      Container(
                        // color: Colors.amber,
                        height: 210,
                        width: 390,
                        child: ListView.builder(
                          scrollDirection: Axis.vertical,
                          itemCount: 5,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              child: Stack(
                                //Container untuk gambar
                                children: [
                                  iniCardPopuler(gambarPopuler[index]),
                                  iniTextCardPopuler(
                                      nmPopuler[index], lokasiPopuler[index]),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
