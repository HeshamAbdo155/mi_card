import 'package:flutter/material.dart';
import 'package:mi_card/card.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mi Card',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: <Widget>[
                CircleAvatar(
                  radius: 70,
                  backgroundImage: Image.asset('images/me.jpg').image,
                ),
                const Text(
                  'Hesham Abdo ElHaron',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Pacifico',
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'Flutter App Developer',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'SourceSerifPro',
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.teal[100],
                    letterSpacing: 5,
                  ),
                ),
                SizedBox(width: 150, child: Divider(color: Colors.teal[100])),
                CardShape(
                  kIcon: Icons.call,
                  title: '01150135550',
                  kOnPressed: () => launch('tel://01150135550'),
                ),
                CardShape(
                  kIcon: Icons.mail,
                  title: 'hesham.abdo5454@gmail.com',
                  kOnPressed: () => launch('https://hesham.abdo5454@gmail.com'),
                ),
                CardShape(
                  kIcon: Icons.account_circle,
                  title: 'Linked in',
                  kOnPressed: () => launch(
                      'https://www.linkedin.com/in/hesham-abdo-6a1486228/'),
                ),
                CardShape(
                  kIcon: Icons.link,
                  title: 'GitHub',
                  kOnPressed: () => launch(
                      'https://github.com/HeshamAbdo155?tab=repositories'),
                ),
                const CardShape(
                  kIcon: Icons.place,
                  title: 'Egypt, Giza, 6 October',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
