import 'package:ecomerce/pao.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
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

        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: SizedBox(
              width: double.infinity,
              height: 55,
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromARGB(255, 241, 241, 241), 
                  prefixIcon: Icon(Icons.search),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color.fromARGB(255, 170, 170, 170))
                  ),
                  hintText: 'Procurar um produto',
                ),
              ),
            ),
          ),

          GestureDetector(
            onTap: ()=> Navigator.of(context).push(MaterialPageRoute(builder: (_)=> const Pao())),
            child: const ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/pao.png'),
            ),
            title: Text('Pão'),
            tileColor: Color.fromARGB(255, 241, 241, 241),
            shape: Border(
              bottom: BorderSide(color: Color.fromARGB(255, 170, 170, 170)),
              top: BorderSide(color: Color.fromARGB(255, 170, 170, 170)),
            )
            ),
          ),

          const ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/arroz.png'),
            ),
            title: Text('Arroz'),
            tileColor: Color.fromARGB(255, 241, 241, 241),
            shape: Border(
              bottom: BorderSide(color: Color.fromARGB(255, 170, 170, 170)),
            )
          ),
          const ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/feijao.png'),
            ),
            title: Text('Feijão'),
            tileColor: Color.fromARGB(255, 241, 241, 241),
            shape: Border(
              bottom: BorderSide(color: Color.fromARGB(255, 170, 170, 170)),
            )
          ),
          const ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/ovo.png'),
            ),
            title: Text('Ovo'),
            tileColor: Color.fromARGB(255, 241, 241, 241),
            shape: Border(
              bottom: BorderSide(color: Color.fromARGB(255, 170, 170, 170)),
            )
          ),
          const ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/leite.png'),
            ),
            title: Text('Leite'),
            tileColor: Color.fromARGB(255, 241, 241, 241),
            shape: Border(
              bottom: BorderSide(color: Color.fromARGB(255, 170, 170, 170)),
            )
          ),
          const ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/coca.png'),
            ),
            title: Text('Refrigerante'),
            tileColor: Color.fromARGB(255, 241, 241, 241),
            shape: Border(
              bottom: BorderSide(color: Color.fromARGB(255, 170, 170, 170)),
            )
          ),
        ],
      )
    );
  }
}