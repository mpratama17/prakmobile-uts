import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prakmobileuts/pages/home.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text('Login Page'),
        ],
      ),
      // body: Padding(
      //   padding: const EdgeInsets.all(20),
      //   child: Column(
      //     children: [
      //       Padding(padding: const EdgeInsets.only(top: 100)),
      //       TextField(
      //         decoration: const InputDecoration(
      //           border: OutlineInputBorder(
      //             borderRadius: BorderRadius.all(Radius.circular(18)),
      //           ),
      //           labelText: 'Username',
      //         ),
      //       ),
      //       Padding(padding: const EdgeInsets.only(top: 20)),
      //       TextField(
      //         decoration: InputDecoration(
      //           hintText: 'Password',
      //           hintStyle: TextStyle(fontSize: 16),
      //           border: OutlineInputBorder(
      //             borderRadius: BorderRadius.circular(18),
      //             borderSide: BorderSide(
      //               width: 1,
      //               style: BorderStyle.none,
      //             ),
      //           ),
      //         ),
      //       ),
      //       Padding(padding: EdgeInsets.only(top: 20)),
      //       Container(
      //         decoration: BoxDecoration(
      //           borderRadius: BorderRadius.all(Radius.circular(20)),
      //           color: Colors.indigo,
      //         ),
      //         height: 40,
      //         width: 200,
      //         child: ElevatedButton(
      //             onPressed: () {
      //               Navigator.pushReplacement(
      //                   context,
      //                   MaterialPageRoute(
      //                       builder: (BuildContext context) => Home()));
      //             },
      //             child: Text('Login')),
      //       )
      //     ],
      //   ),
      // ),
      // body: Column(
      //   children: [
      //     Stack(
      //       children: [
      //         Container(
      //           height: 580,
      //           width: double.infinity,
      //           decoration: const BoxDecoration(
      //             image: DecorationImage(
      //               image: AssetImage('assets/tes.png'),
      //               fit: BoxFit.cover,
      //             ),
      //           ),
      //         ),
      //         Container(
      //           height: 200,
      //           width: double.infinity,
      //           decoration: const BoxDecoration(
      //             gradient: LinearGradient(
      //               begin: Alignment.bottomCenter,
      //               end: Alignment.topCenter,
      //               colors: [
      //                 Colors.black,
      //                 Colors.black12,
      //               ],
      //             ),
      //           ),
      //         ),
      //         Positioned(
      //           bottom: 20,
      //           left: 20,
      //           top: 400,
      //           child: Column(
      //             crossAxisAlignment: CrossAxisAlignment.start,
      //             children: [
      //               Text(
      //                 'Lets',
      //                 style: GoogleFonts.poppins(
      //                   color: Colors.white,
      //                   fontSize: 30,
      //                   fontWeight: FontWeight.bold,
      //                 ),
      //               ),
      //               Text(
      //                 'Get Started!',
      //                 style: GoogleFonts.poppins(
      //                   color: Colors.white,
      //                   fontSize: 30,
      //                   fontWeight: FontWeight.bold,
      //                 ),
      //               ),
      //               Padding(
      //                 padding: const EdgeInsets.symmetric(horizontal: 20),
      //                 child: Column(
      //                   children: [
      //                     TextField(
      //                       decoration: const InputDecoration(
      //                         hintText: 'Username',
      //                         prefixIcon: Icon(Icons.person),
      //                       ),
      //                     ),
      //                     const SizedBox(
      //                       height: 20,
      //                     ),
      //                     TextField(
      //                       decoration: const InputDecoration(
      //                         hintText: 'Password',
      //                         prefixIcon: Icon(Icons.lock),
      //                       ),
      //                     ),
      //                     const SizedBox(
      //                       height: 20,
      //                     ),

      //                     //Button Login
      //                     Container(
      //                       height: 40,
      //                       width: 250,
      //                       decoration: BoxDecoration(
      //                         borderRadius: BorderRadius.circular(50),
      //                       ),
      //                       child: ElevatedButton(
      //                         onPressed: () {},
      //                         child: const Text('Login'),
      //                       ),
      //                     ),
      //                   ],
      //                 ),
      //               ),
      //             ],
      //           ),
      //         ),
      //       ],
      //     ),
      //     SizedBox(
      //       height: 20,
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.symmetric(horizontal: 20),
      //       child: Column(
      //         children: [
      //           TextField(
      //             decoration: const InputDecoration(
      //               hintText: 'Username',
      //               prefixIcon: Icon(Icons.person),
      //             ),
      //           ),
      //           const SizedBox(
      //             height: 20,
      //           ),
      //           TextField(
      //             decoration: const InputDecoration(
      //               hintText: 'Password',
      //               prefixIcon: Icon(Icons.lock),
      //             ),
      //           ),
      //           const SizedBox(
      //             height: 20,
      //           ),

      //           //Button Login
      //           Container(
      //             height: 40,
      //             width: 250,
      //             decoration: BoxDecoration(
      //               borderRadius: BorderRadius.circular(50),
      //               // color: Colors.blue,
      //             ),
      //             child: ElevatedButton(
      //               onPressed: () {
      //                 Navigator.push(
      //                   context,
      //                   MaterialPageRoute(builder: (context) => const Home()),
      //                 );
      //               },
      //               child: const Text('Login'),
      //             ),
      //           ),
      //         ],
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}
