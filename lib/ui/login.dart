import 'package:flutter/material.dart';

class Login extends StatefulWidget {

  @override
    State<StatefulWidget> createState() {
      return LoginState();
    }
}
      
class LoginState extends State<Login> {

  final TextEditingController _userController = new TextEditingController();
  final TextEditingController _passwordController = new TextEditingController();

  @override
    Widget build(BuildContext context) {
      return Scaffold(

        appBar: AppBar(
          title: Text("Login"),
          centerTitle: true,
          backgroundColor: Colors.blueAccent
        ),

        backgroundColor: Colors.blueGrey,

        body: Container(
          alignment: Alignment.topCenter,
          child: Column(
            children: <Widget>[

              Image.asset(
                'images/face.png',
                width: 90.0,
                height: 90.0,
                color: Colors.green
              ),

              Container(
                height: 180.0,
                width: 380.0,
                color: Colors.white,
                child: Column(
                  children: <Widget>[

                    TextField(
                      controller: _userController,
                      decoration: InputDecoration(
                        hintText: 'username',
                        icon: Icon(Icons.person)
                      )
                    ),

                    TextField(
                      controller: _passwordController,
                      decoration: InputDecoration(
                        hintText: 'password',
                        icon: Icon(Icons.lock)
                      )
                    )

                  ]
                )
              )
            ]
          )
        )
      );
    }
}