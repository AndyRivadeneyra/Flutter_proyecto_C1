import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/pages/NewIndividuosList.dart';

class NewList extends StatelessWidget {
  final List<String> lista = <String>[
      'Isaac','Carolli','Gabriela','Claudio','Vilchis','Zictcian','Joselito','Erika','Matuz','Rogelio','Gerardo','Fabian','Sadie'
  ];
  String nameData;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(240, 94, 100,1.0),
        title: Text('Userlist page'),
        ),
        body: Container(
          alignment: Alignment.bottomCenter,
          child: ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: lista.length,
            itemBuilder: (BuildContext context, int index){
              return Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 50,
                      width: 300,
                      margin: const EdgeInsets.only(top: 10.0),
                      child: Center(
                        child: RaisedButton(
                          color: Color.fromRGBO(0, 0, 0, 1.0),
                          child: Center(
                            child: Text('${lista[index]}',
                            style: TextStyle(color: Colors.white)
                            ),
                          ),
                          onPressed: (){
                            Navigator.push(context,
                            MaterialPageRoute(builder: (context) => NewIndividuoList(name: lista[index])),);
                          },
                        ),
                      ),
                    )
                  ]
                ),
                );
            },
          ),
        ),
    );
  }
}