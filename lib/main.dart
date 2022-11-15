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
       padding: EdgeInsets.fromLTRB(20, 50, 20, 0),

          children: const [
               Profile(),
               SizedBox(height: 20),
               Search(),
            SizedBox(height: 20),
            Stats(),
            SizedBox(height: 15),

            Item1(),
            SizedBox(height: 15),

            Item2(),
            SizedBox(height: 15),

            Item3(),
            SizedBox(height: 20),

            Goals(),





          ]
      ),
    );
  }
}
class Goals extends StatelessWidget {
  const Goals({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Comapany goals",
        style: Theme.of(context).textTheme.headline6,),
        Text("ALL")
      ],

    );
  }
}


class Item3 extends StatelessWidget {
  const Item3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: (BoxDecoration(
              color: Colors.black
          )),
          child: Icon(Icons.sports_basketball_outlined, color: Colors.white,),
        ),
        SizedBox(width: 15,),
        Text("Runtime cost"),
        SizedBox(width: 95),

        Text("\$6.235%",
        style: TextStyle(fontWeight: FontWeight.bold),)
      ],

    );
  }
}

class Item2 extends StatelessWidget {
  const Item2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: (BoxDecoration(
              color: Colors.black
          )),
          child: Icon(Icons.fingerprint_sharp, color: Colors.white,),
        ),
        SizedBox(width: 15,),
        Text("Protected bunches"),
        SizedBox(width: 70),
        Icon(Icons.arrow_downward_rounded,
          color: Colors.red,
          size: 16,),
        Text("38%")
      ],

    );
  }
}

class Item1 extends StatelessWidget {
  const Item1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 50,
        width: 50,
        decoration: (BoxDecoration(
          color: Colors.black
        )),
          child: Icon(Icons.key, color: Colors.white,),
        ),
        SizedBox(width: 15,),
        Text("Security Attacks"),
        SizedBox(width: 80),
        Icon(Icons.arrow_upward_rounded,
        color: Colors.green,
        size: 16,),
        Text("68%")
      ],

    );
  }
}

class Stats extends StatelessWidget {
  const Stats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [

        Text("Statistics",
        style: Theme.of(context).textTheme.headline5),
         Text("MONTH",
            style: Theme.of(context).textTheme.bodyLarge)
      ],
      
    );
  }
}


class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black)
      ),

    child:
      Row(

        mainAxisAlignment: MainAxisAlignment.start,
        children:  [
          Padding(padding: EdgeInsets.all(10),
            child: Icon(Icons.search),

          ),

          SizedBox(
            width: MediaQuery.of(context).size.width*0.6,
            child: TextField(
              decoration: (
                  InputDecoration(
                    label: Text("Search"),
                  )
              ),
            ),
          ),
          SizedBox(width: 8,),
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
               gradient: LinearGradient(colors: [
                 Colors.green.shade800,
                 Colors.green.shade600,
                 Colors.green.shade300,
                 Colors.amberAccent.shade200,
               ],
                 begin: Alignment.topCenter,
                   end: Alignment.bottomCenter


               ),
                   border: Border.all(color: Colors.black),

            ),

              child: Icon(Icons.menu_outlined),


          )
        ],
      ));

  }
}



class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Row(



      mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 50,
            width: MediaQuery.of(context).size.width*0.6,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children:  [

                 Text(
                  'Emmilly Immaculate',
                  style: Theme.of(context).textTheme.headline6,
                ),
                Text(
                  'Mobile Application Dev',
                  style: TextStyle(color: Colors.grey.shade600),
                )
              ],
            ),
          )
              ,
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
