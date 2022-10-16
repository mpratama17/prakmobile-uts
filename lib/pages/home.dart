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
  // int _pilihanButton = 0;

  // final List<Widget> _children = [
  //   Home(),
  //   Profile(),
  //   // Beranda(),
  //   // Reels(),
  // ];
  // void _onItemTapped(int index) {
  //   setState(() {
  //     _pilihanButton = index;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFffffff),
      // appBar: iniAppBar(),
      drawer: iniDrawer(context),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24, 24, 24, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Container Header
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(-1.07, 0),
                      child: IconButton(
                        icon: Icon(
                          Icons.menu,
                        ),
                        iconSize: 35,
                        // color: Colors.green,
                        // splashColor: Colors.purple,
                        onPressed: () {
                          Scaffold.of(context).openDrawer();
                        },
                      ),
                    ),
                    //Text Header
                    iniHeader("Hari ini \nMau kemana?"),

                    //Text SubHeader
                    iniSubHeader(
                        "temukan tempat wisata \nterbaik di sekitarmu"),
                    SizedBox(
                      height: 20,
                    ),
                    //Text "Recommended"
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Recommended",
                          style: GoogleFonts.poppins(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Colors.black)),
                    ),
                  ],
                ),
              ),
              Container(
                // color: Colors.amber,
                height: 250,
                width: double.infinity,

                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      elevation: 5,
                      child: Stack(
                        children: [
                          Image.asset(
                            gambar[index],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, bottom: 10),
                                child: Text("tes",
                                    style: GoogleFonts.poppins(
                                      fontSize: 20,
                                      color: Colors.white,
                                    )),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
