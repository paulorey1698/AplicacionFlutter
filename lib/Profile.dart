import 'package:flutter/material.dart';

class Profile extends StatelessWidget {

  @override
  Widget build(BuildContext context){
    return Material(
        child:
        SingleChildScrollView(child: Column(
            children: <Widget>[
              Stack(
                  children: <Widget>[
                    new Container(
                      height: MediaQuery.of(context).size.height *.3,
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                      ),
                      child: Stack(),
                    ),
                    new Center(
                        child:
                        new Container(
                            margin: new EdgeInsets.only(top: 5),
                            child:
                            Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[

                                  new CircleAvatar(
                                    backgroundImage: AssetImage('img/chico1.png'),
                                    radius: 55,
                                  ),

                                  new Text('JOHN DOE',style: TextStyle(color: Colors.white, fontSize: 18.0),),

                                  new Container(
                                      height: 60,
                                      width: 330,
                                      decoration: new BoxDecoration(
                                        borderRadius: new BorderRadius.circular(8.0),
                                        boxShadow: [BoxShadow(
                                          color: Colors.black.withOpacity(0.2),
                                          blurRadius: 6,
                                          offset: Offset(1, 1),
                                        )
                                        ],
                                        color: Colors.white,
                                      ),
                                      child:
                                      Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: <Widget>[
                                            Column(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Row(
                                                      children: <Widget>[
                                                        Icon(Icons.favorite_border),
                                                        Text('30')
                                                      ]
                                                  ),
                                                  Text('Connections')
                                                ]
                                            ),

                                            Column(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Row(
                                                      children: <Widget>[
                                                        Icon(Icons.chat_bubble_outline),
                                                        Text('10')
                                                      ]
                                                  ),
                                                  Text('Chats')
                                                ]
                                            )
                                          ]
                                      )
                                  ),

                                  new Container(
                                    margin: new EdgeInsets.symmetric(vertical: 30),
                                    width: 330,
                                    child: MyCustomForm(),
                                  )
                                ]
                            )
                        )
                    )
                  ]
              )
            ]
        )
        )
    );
  }
}

class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

class MyCustomFormState extends State<MyCustomForm> {

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {

    return Form(
        key: _formKey,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                  'Status'
              ),
              TextFormField(
                // El validator recibe el texto que el usuario ha digitado
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter some text';
                  }
                },
              ),
              Text(
                  'Email'
              ),
              TextFormField(
                // El validator recibe el texto que el usuario ha digitado
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter some text';
                  }
                },
              ),
              Text(
                  'Phone Number'
              ),
              TextFormField(
                // El validator recibe el texto que el usuario ha digitado
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter some text';
                  }
                },
              ),

              Text(
                  'Date of Birthday'
              ),
              TextFormField(
                // El validator recibe el texto que el usuario ha digitado
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter some text';
                  }
                },
              ),
              Container(
                width: 330,
                height: 90,
                child:
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: FlatButton(
                      onPressed: () {
                        // devolverá true si el formulario es válido, o falso si
                        // el formulario no es válido.
                        if (_formKey.currentState.validate()) {
                          // Si el formulario es válido, queremos mostrar un Snackbar
                          Scaffold.of(context)
                              .showSnackBar(SnackBar(content: Text('Procesando Datos ingresados')));
                        }
                      },
                      child: Text('Log out', style: TextStyle(color: Colors.white, fontSize: 20),),
                      color: Colors.red,
                      shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(8.0))
                  ),
                ),
              )
            ]
        )
    );
  }
}