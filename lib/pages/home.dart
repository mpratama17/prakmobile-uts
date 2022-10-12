import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prakmobileuts/fungsi.dart';
import 'package:prakmobileuts/pages/login.dart';
import 'package:prakmobileuts/pages/profile.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _pilihanButton = 0;

  final List<Widget> _children = [
    Home(),
    Profile(),
    // Beranda(),
    // Reels(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _pilihanButton = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      drawer: iniDrawer(context),

      //bottomNavigationBar: iniBottomNavigationBar(),
      // bottomNavigationBar: BottomNavigationBar(
      //   // currentIndex: selectedPage,
      //   // onTap: (index),
      //   selectedItemColor: Colors.grey[800],
      //   type: BottomNavigationBarType.fixed,
      //   backgroundColor: Colors.white,
      //   items: const [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: 'Home',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: CircleAvatar(
      //         backgroundImage: AssetImage('assets/tes.png'),
      //         // NetworkImage(
      //         //     'https://www.instagram.com/p/CgE12tsP6JN/?utm_source=ig_web_copy_link'),
      //       ),
      //       label: 'Profile',
      //     ),
      //   ],
      //   currentIndex: _pilihanButton,
      //   onTap: _onItemTapped,
      // ),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 200,
                width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/1.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              // Container(
              //   height: 200,
              //   width: double.infinity,
              //   decoration: const BoxDecoration(
              //     gradient: LinearGradient(
              //       begin: Alignment.bottomCenter,
              //       end: Alignment.topCenter,
              //       colors: [
              //         Colors.black,
              //         Colors.black12,
              //       ],
              //     ),
              //   ),
              // ),
              Positioned(
                bottom: 20,
                left: 20,
                top: 20,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome to',
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text(
                      'PrakMobile UTS',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    // ElevatedButton(
                    //     onPressed: () {
                    //       Navigator.pop(context, LoginPage());
                    //     },
                    //     child: const Text('Login'))
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
