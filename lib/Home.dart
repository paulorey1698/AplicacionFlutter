import 'package:flutter/material.dart';
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Material(

        child:
        SingleChildScrollView(child:
        Column(
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
                    new Container(
                      margin: EdgeInsets.only(right: 5, top: 50),
                      height: 470.00,
                      width: 430.00,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[

                          Container(
                            height: 510.00,
                            width: 320.00,
                            margin: EdgeInsets.symmetric(horizontal: 20.0),
                            //color: Colors.red,
                            child:

                            Column(
                                children: <Widget>[
                                  new Image.asset(
                                    'img/chico1.png',
                                    width: 320.0,
                                    height: 320.0, ),
                                  Text('JANE DOE', style: TextStyle(fontSize: 25)),
                                  Text('25 ', style: TextStyle(fontSize: 16)),
                                  Text('This is some description about the person, what he/she expects from the partner and also what the want to achieve in the life', style: TextStyle(fontSize: 14)),

                                  Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: <Widget>[
                                        FlatButton(
                                            onPressed: () => {},
                                            color: Colors.red,
                                            padding: EdgeInsets.only(right: 40,left: 40),
                                            child: Row( // Replace with a Row for horizontal icon + text
                                              children: <Widget>[
                                                Icon(Icons.favorite_border, color: Colors.white,),
                                                Text("Connect",style: TextStyle(color: Colors.white),)
                                              ],
                                            )
                                        ),

                                        FlatButton(
                                            onPressed: () => {},
                                            color: Colors.green,
                                            padding: EdgeInsets.only(right: 40,left: 40),
                                            child: Row( // Replace with a Row for horizontal icon + text
                                              children: <Widget>[
                                                Icon(Icons.send, color: Colors.white,),
                                                Text("Message",style: TextStyle(color: Colors.white),)
                                              ],
                                            )
                                        ),


                                      ]
                                  )

                                ]

                            ),
                            decoration: BoxDecoration(
                              borderRadius: new BorderRadius.circular(5.0),
                              boxShadow: [BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                blurRadius: 6,
                                offset: Offset(1, 1),
                              )
                              ],
                              color: Colors.white,
                            ),
                          ),
                          Container(
                            height: 510.00,
                            width: 320.00,
                            margin: EdgeInsets.symmetric(horizontal: 20.0),
                            //color: Colors.red,
                            child:

                            Column(
                                children: <Widget>[
                                  new Image.asset(
                                    'img/chica1.png',
                                    width: 320.0,
                                    height: 320.0, ),
                                  Text('JANE DOE', style: TextStyle(fontSize: 25)),
                                  Text('25 ', style: TextStyle(fontSize: 16)),
                                  Text('This is some description about the person, what he/she expects from the partner and also what the want to achieve in the life', style: TextStyle(fontSize: 14)),

                                  Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: <Widget>[
                                        FlatButton(
                                            onPressed: () => {},
                                            color: Colors.red,
                                            padding: EdgeInsets.only(right: 40,left: 40),
                                            child: Row( // Replace with a Row for horizontal icon + text
                                              children: <Widget>[
                                                Icon(Icons.favorite_border, color: Colors.white,),
                                                Text("Connect",style: TextStyle(color: Colors.white),)
                                              ],
                                            )
                                        ),

                                        FlatButton(
                                            onPressed: () => {},
                                            color: Colors.green,
                                            padding: EdgeInsets.only(right: 40,left: 40),
                                            child: Row( // Replace with a Row for horizontal icon + text
                                              children: <Widget>[
                                                Icon(Icons.send, color: Colors.white,),
                                                Text("Message",style: TextStyle(color: Colors.white),)
                                              ],
                                            )
                                        ),


                                      ]
                                  )

                                ]

                            ),
                            decoration: BoxDecoration(
                              borderRadius: new BorderRadius.circular(5.0),
                              boxShadow: [BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                blurRadius: 6,
                                offset: Offset(1, 1),
                              )
                              ],
                              color: Colors.white,
                            ),
                          ),
                          Container(
                            height: 510.00,
                            width: 320.00,
                            margin: EdgeInsets.symmetric(horizontal: 20.0),
                            //color: Colors.red,
                            child:

                            Column(
                                children: <Widget>[
                                  new Image.asset(
                                    'img/chica2.png',
                                    width: 320.0,
                                    height: 320.0, ),
                                  Text('JANE DOE', style: TextStyle(fontSize: 25)),
                                  Text('25 ', style: TextStyle(fontSize: 16)),
                                  Text('This is some description about the person, what he/she expects from the partner and also what the want to achieve in the life', style: TextStyle(fontSize: 14)),

                                  Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: <Widget>[
                                        FlatButton(
                                            onPressed: () => {},
                                            color: Colors.red,
                                            padding: EdgeInsets.only(right: 40,left: 40),
                                            child: Row( // Replace with a Row for horizontal icon + text
                                              children: <Widget>[
                                                Icon(Icons.favorite_border, color: Colors.white,),
                                                Text("Connect",style: TextStyle(color: Colors.white),)
                                              ],
                                            )
                                        ),

                                        FlatButton(
                                            onPressed: () => {},
                                            color: Colors.green,
                                            padding: EdgeInsets.only(right: 40,left: 40),
                                            child: Row( // Replace with a Row for horizontal icon + text
                                              children: <Widget>[
                                                Icon(Icons.send, color: Colors.white,),
                                                Text("Message",style: TextStyle(color: Colors.white),)
                                              ],
                                            )
                                        ),


                                      ]
                                  )

                                ]

                            ),
                            decoration: BoxDecoration(
                              borderRadius: new BorderRadius.circular(5.0),
                              boxShadow: [BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                blurRadius: 6,
                                offset: Offset(1, 1),
                              )
                              ],
                              color: Colors.white,
                            ),
                          ),

                        ],
                      ),
                    ),


                  ]
              )
            ]
        )

        )
    );
  }
}
