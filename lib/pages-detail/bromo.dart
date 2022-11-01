import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class BromoDetail extends StatefulWidget {
  const BromoDetail({Key? key}) : super(key: key);

  @override
  State<BromoDetail> createState() => _BromoDetailState();
}

class _BromoDetailState extends State<BromoDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          //Container Gambar

          Container(
            height: 350,
            width: double.infinity,
            // color: Colors.amberAccent,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30)),
              child: Stack(
                children: [
                  Image.asset(
                    'assets/bromo.jpg',
                    width: double.infinity,
                    height: 350,
                    fit: BoxFit.cover,
                  ),
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back)),
                ],
              ),
            ),
          ),

          //Container detail
          Container(
            height: 100,
            width: 390,
            // color: Colors.blue,
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Text("Bromo",
                          style: GoogleFonts.poppins(
                              fontSize: 32, fontWeight: FontWeight.w600)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 0),
                      child: Text("Jawa Timur",
                          style: GoogleFonts.poppins(
                              fontSize: 16, fontWeight: FontWeight.w400)),
                    )
                  ],
                ),
                SizedBox(
                  width: 150,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 24.0),
                  child: Container(
                    child: Row(
                      children: [
                        
                        Icon(Icons.star, color: Colors.yellow, size: 30),
                        Icon(Icons.star, color: Colors.yellow, size: 30),
                        Icon(Icons.star, color: Colors.yellow, size: 30),
                        Icon(Icons.star, color: Colors.yellow, size: 30),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          //Container deskripsi
          Container(
            height: 342,
            width: 390,
            // color: Colors.red,
            child: Text(
                "Gunung Bromo atau dalam bahasa Tengger dieja "
                "Brama"
                ", juga disebut Kaldera Tengger, adalah sebuah gunung berapi aktif di Jawa Timur, Indonesia. Gunung ini memiliki ketinggian 2.329 meter di atas permukaan laut dan berada dalam empat wilayah kabupaten, yakni Kabupaten Probolinggo, Kabupaten Pasuruan, Kabupaten Lumajang, dan Kabupaten Malang. Gunung Bromo terkenal sebagai objek wisata utama di Jawa Timur. Sebagai sebuah objek wisata,"
                "Bromo menjadi menarik karena statusnya sebagai gunung berapi yang masih aktif"
                "Gunung Bromo termasuk dalam kawasan Taman Nasional Bromo Tengger Semeru.",
                style: GoogleFonts.poppins(
                    fontSize: 16, fontWeight: FontWeight.w400)),
          )
        ],
      ),
    ));
  }
}
