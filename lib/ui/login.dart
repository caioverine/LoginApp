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
  String _welcomeMessage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.blueGrey,

      appBar: AppBar(
        title: Text("Login"),
        centerTitle: true,
        backgroundColor: Colors.blueAccent
      ),

      body: Container(
        alignment: Alignment.topCenter,
        child: ListView(
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
                    ),
                    obscureText: true
                  ),

                  Padding(padding: EdgeInsets.all(10.5)),

                  Center(
                    child: Row(
                      children: <Widget>[
                        //Login Button
                        Container(
                          margin: const EdgeInsets.only(left: 38.0),
                          child: RaisedButton(
                            onPressed: () => _login(),
                            color: Colors.redAccent,
                            child: Text("Login",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.9
                              )
                            )
                          ),
                        ),
                        //Clear Button
                        Container(
                          margin: const EdgeInsets.only(left: 120.0),
                          child: RaisedButton(
                            onPressed: () => _erase(),
                            color: Colors.redAccent,
                            child: Text("Clear",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.9
                              )
                            )
                          ),
                        )
                      ]
                    )
                  )

                ]
              )
            ), //Form ends here

            Padding(padding: EdgeInsets.only(top: 14.0)),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(_welcomeMessage,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 19.4,
                    fontWeight: FontWeight.w500
                  )
                )
              ]
            ) 
          ]
        )
      )
    );
  }

  void _login(){

    setState(() {

      if(_userController.text.isNotEmpty && _passwordController.text.isNotEmpty){

        _welcomeMessage = 'Welcome, ' + _userController.text;
      } else {

        _welcomeMessage = 'Nah!';
      }
    });
  }

  void _erase(){

    setState(() {
          
      _userController.clear();
      _passwordController.clear();
    });
  }
}