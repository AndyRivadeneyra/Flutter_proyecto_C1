import 'package:flutter/material.dart';

import 'NewList.dart';
import 'NewPage.dart';

class NewLogin extends StatelessWidget {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(240, 94, 100,1.0),
          title: Text('Login Page'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(16.0),
                child: TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'User',
                      fillColor: Colors.white,
                      filled: true),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: TextField(
                  obscureText: true,
                  controller: passwordController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    fillColor: Colors.white,
                    filled: true),
                ),
              ),
              RaisedButton(
                textColor: Colors.white,
                color: Color.fromRGBO(42, 200, 194, 1.0),
                child: Text('SIGN IN'),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => NewList()));
                },
              ),
              Container(
                height: 150,
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: RaisedButton(
                    textColor: Colors.white,
                    color: Color.fromRGBO(42, 200, 194, 1.0),
                    child: Text('BACK'),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => NewPage()),);
                    }
                  )
                )
              )
            ],
          ),
      ),
    backgroundColor: Color.fromRGBO(249, 246, 239,
        1.0) // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
