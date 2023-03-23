import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login'),),
      body: Stack(
        children: <Widget>[
          Container(
            color: Colors.grey[100],
          ),
        Positioned(
          top: 100,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Login Here',
            style: TextStyle(fontSize:30 ),
            ),
          ),
          ),

        Positioned(
          top: 200,
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Padding(
            padding: EdgeInsets.all(8.0),
             child: TextField(
          decoration: InputDecoration(
          labelText: 'Username'
              ),
            ),
            ),
          ),),

              Positioned(
          top: 270,
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Padding(
            padding: EdgeInsets.all(8.0),
             child: TextField(
          decoration: InputDecoration(
          labelText: 'Password'
              ),
            ),
            ),
          ),),

          Positioned(
          top: 350,
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Padding(
            padding: EdgeInsets.all(8.0),
             child: MaterialButton(
              color: Colors.indigo,
              child: Text('Login', style: TextStyle(color: Colors.white),),
              onPressed: () {
               
             },),
            ),
          ),),

          Positioned(
          top: 400,
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Padding(
            padding: EdgeInsets.all(8.0),
              child: Text('Or Sign Up', style: TextStyle(color: Color.fromARGB(255, 25, 0, 255)),),
            ),
          ),
          ),

           Positioned(
          top: 450,
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Padding(
            padding: EdgeInsets.all(8.0),
            
            ),
          ),
          ),


        ],
      ),
    );
  }
}