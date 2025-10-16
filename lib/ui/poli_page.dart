import 'package:flutter/material.dart';
import '../model/poli.dart';
// import 'poli_detail.dart';
import 'poli_item.dart'; 
import 'poli_form.dart';
import '../widget/sidebar.dart';


class PoliPage extends StatefulWidget {
  const PoliPage({super.key});

  @override
  State<PoliPage> createState() => _PoliPageState();
}

class _PoliPageState extends State<PoliPage> {
  // final poliAnak = Poli(namaPoli: "Poli Anak");
  // final poliKandungan = Poli(namaPoli: "Poli Kandungan");
  // final poliGigi = Poli(namaPoli: "Poli Gigi");
  // final poliTht = Poli(namaPoli: "Poli THT");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Sidebar(), 
      appBar: AppBar(title: const Text("Data Poli Klinik Tasyee"),
      actions: [
        GestureDetector(
        child: const Icon(Icons.add),
        onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const PoliForm()),
        );
        },
        )
      ], 
    ),
      body: ListView(
        children: [
          // Card(
          //   child: GestureDetector(
          //     onTap: () {
          //       Navigator.push(
          //         context,
          //         MaterialPageRoute(
          //           builder: (context) => PoliDetail(poli: poliAnak),
          //         ),
          //       );
          //     },
          //     child: const ListTile(
          //       title: Text("Poli Anak"),
          //     ),
          //   ),
          // ),
          // Card(
          //   child: GestureDetector(
          //     onTap: () {
          //       Navigator.push(
          //         context,
          //         MaterialPageRoute(
          //           builder: (context) => PoliDetail(poli: poliKandungan),
          //         ),
          //       );
          //     },
          //     child: const ListTile(
          //       title: Text("Poli Kandungan"),
          //     ),
          //   ),
          // ),
          // Card(
          //   child: GestureDetector(
          //     onTap: () {
          //       Navigator.push(
          //         context,
          //         MaterialPageRoute(
          //           builder: (context) => PoliDetail(poli: poliGigi),
          //         ),
          //       );
          //     },
          //     child: const ListTile(
          //       title: Text("Poli Gigi"),
          //     ),
          //   ),
          // ),
          // Card(
          //   child: GestureDetector(
          //     onTap: () {
          //       Navigator.push(
          //         context,
          //         MaterialPageRoute(
          //           builder: (context) => PoliDetail(poli: poliTht),
          //         ),
          //       );
          //     },
          //     child: const ListTile(
          //       title: Text("Poli THT"),
          //     ),
          //   ),
          // ),

          PoliItem(poli: Poli(namaPoli: "Poli Anak")),
          PoliItem(poli: Poli(namaPoli: "Poli Kandungan")),
          PoliItem(poli: Poli(namaPoli: "Poli Gigi")),
          PoliItem(poli: Poli(namaPoli: "Poli THT")), 
        ],
      ),
    );
  }
}
