import 'package:ecomerce/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Pao extends StatefulWidget {
  const Pao({super.key});

  @override
  State<Pao> createState() => _PaoState();
}

class _PaoState extends State<Pao> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (u)=> const HomePage()));
          },
          icon: const Icon(Icons.arrow_back),
        ),
        title: Text('Mercadinho', style: GoogleFonts.kanit(fontSize: 18, fontWeight: FontWeight.bold)),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 12.0),
            child: Icon(Icons.account_circle),
          )
        ],
        backgroundColor: Colors.lightBlue,
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 275,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.contain,
                image: AssetImage('assets/pao-frances.jpg'))
            ),
          ),
          Text('Pão', style: GoogleFonts.kanit(fontSize: 18, fontWeight: FontWeight.bold)),
          const Text('Pão feito pelo proprio mercadinho!'),
          Container(
            padding: EdgeInsets.all(10),
            margin: const EdgeInsets.all(64),
            height: 75,
            width: 175,
            color: Colors.green,
            child: 
              const Text('75 centavos a unidade!\n          COMPRAR'),
          )
        ]
      ),
    );
  }
}