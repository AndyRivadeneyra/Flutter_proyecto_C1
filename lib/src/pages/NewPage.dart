import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/pages/NewLogin.dart';

class NewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        color: Color.fromRGBO(249, 246, 239, 1.0),
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(100.0),
              child: Image.asset('assets/images/LogoIDS.png',width: 500),
            ),
            Container(
              child: Text('WELCOME',),
              padding: EdgeInsets.all(50.0),
            ),
            Container(
              child: RaisedButton(
                textColor: Colors.white,
                child: Text('NEXT PAGE'),
                color: Color.fromRGBO(42, 200, 194, 1.0),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => NewLogin()),);
                },
                ),
            ),
          ],
          ),
        )
    );
  }
}