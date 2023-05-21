import 'package:flutter/material.dart';
import 'package:flutter_application_7/repas.dart';

class ajouteraliment extends StatefulWidget {
  const ajouteraliment({super.key});

  @override
  _ajouteralimentState createState() => _ajouteralimentState();
}

class _ajouteralimentState extends State<ajouteraliment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff011638),
        title: const Text(
          "Mon repas ",
          style: TextStyle(fontSize: 18, color: Color(0xFFCE6D39)),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.search,
              color: Color(0xFFCE6D39),
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        color: Colors.white,
        alignment: Alignment.center,
        child: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.fromLTRB(10, 30, 10, 6),

                    width: 300,
                    // height: 35,
                    // padding: EdgeInsets.all(8.0),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFe77e4d),
                          shape: const StadiumBorder(),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/categories');
                        },
                        child: const Text(
                          'Ajouter un aliment',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              color: Color(0xFF011638)),
                        )),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
