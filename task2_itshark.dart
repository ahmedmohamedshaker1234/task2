import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: newproject(),
    );
  }
}

class newproject extends StatelessWidget {
  const newproject({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('contacts'),
      ),
      body: ListView(
        children: [
          buildProductItem(
            image: 'images/aaveSitassets/eLogo.png ',
            name: 'alma christen',
            gmail: 'alma.christen@example.com',
          ),
          buildProductItem(
            image: 'images/aaveSitassets/eLogo.png',
            name: 'sergio hill',
            gmail: 'serio hill@e@example.com',
          ),
          buildProductItem(
            image: 'images/aaveSitassets/eLogo.png',
            name: 'ahmed shaker',
            gmail: '',
          ),
          buildProductItem(
            image: 'images/aaveSitassets/eLogo.png',
            name: 'adham azaro',
            gmail: 'adham azaro@example.com',
          ),
          buildProductItem(
            image: 'images/aaveSitassets/eLogo.png',
            name: 'ahmed bahaa ',
            gmail: 'ahmed@example.com',
          ),
        ],
      ),
    );
  }

  Container buildProductItem({
    required String image,
    required String name,
    required String gmail,
  }) {
    return Container(
      width: double.infinity,
      height: 120,
      child: Card(
        child: Row(
          children: [
            Image.asset(image),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    name,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    gmail,
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
