import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey.shade200,
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key });
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(


      body: ListView(


          children: const [
               Profile()

          ]
      ),
    );
  }
}
class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
        children: [

              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

              children:  [

              const Text(
                  'Emmilly Immaculate',
                   style: TextStyle(fontSize: 30),
              ),
              Text(
                  'CEO at MpaMpe',
                  style: TextStyle(color: Colors.grey.shade600),
              )
            ],
          ),
          SizedBox(
            width: 50,

          ),
          Image.asset(
              'assets/emily.jpg',
              height: 50,
            width: 50,
          )
        ],


    );
  }
}
