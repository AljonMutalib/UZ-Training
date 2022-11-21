import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'UZ App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 50, left: 20),
                //color: Colors.red,
                width: 60,
                height: 60,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    'https://upload.wikimedia.org/wikipedia/commons/3/34/Elon_Musk_Royal_Society_%28crop2%29.jpg',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 50, left: 20),
                    //color: Colors.blue,
                    width: 160,
                    height: 15,
                    child: const Text(
                      'Elon Musk',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10, left: 20),
                    //color: Colors.green,
                    width: 100,
                    height: 12,
                    child: Text(
                      'CEO',
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 10),
            child: Divider(
              thickness: 1,
            ),
          ),
          for (int i = 0; i < 4; i++)
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 10, left: 20),
                  color: Colors.red,
                  width: 60,
                  height: 30,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10, left: 20, right: 100),
                  color: Colors.red,
                  width: 120,
                  height: 30,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10, left: 20),
                  color: Colors.red,
                  width: 20,
                  height: 30,
                ),
              ],
            ),
          const Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 10),
            child: Divider(
              thickness: 1,
            ),
          ),
          for (int i = 0; i < 3; i++)
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 10, left: 20),
                  color: Colors.red,
                  width: 60,
                  height: 30,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10, left: 20, right: 100),
                  color: Colors.red,
                  width: 120,
                  height: 30,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10, left: 20),
                  color: Colors.red,
                  width: 20,
                  height: 30,
                ),
              ],
            ),
          Container(
            margin:
                const EdgeInsets.only(top: 30, bottom: 10, right: 20, left: 20),
            color: Colors.red,
            width: 800,
            height: 60,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              for (int i = 0; i < 4; i++)
                Container(
                  margin: const EdgeInsets.only(top: 50),
                  color: Colors.red,
                  width: 60,
                  height: 60,
                ),
            ],
          )
        ],
      ),
    );
  }
}
