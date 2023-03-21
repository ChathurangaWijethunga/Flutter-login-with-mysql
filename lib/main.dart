import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
        //primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var curdate = DateFormat('EEEE, MMM d, yyyy').format(DateTime.now());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white54,
        elevation: 1,
        actions: <Widget>[
          Container(
            width: 150,
            height: 50,
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Search',
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
      drawer: Drawer(),
      body: Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
          child:Text('Maahindra Ideal',style: TextStyle(fontSize: 25,),)
          ),
          
            Padding(
            padding: const EdgeInsets.all(8.0),
          child:Text(
            curdate,
            style: TextStyle(fontSize: 25,),
            )
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.today,
              color: Colors.pink,
            ),
            ),
        ],
        ),

        TopPostCard(),

    );
  }
}
