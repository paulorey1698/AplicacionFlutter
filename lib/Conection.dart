import 'package:flutter/material.dart';
class Conection extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
        body:
        SingleChildScrollView(child:
          Container(
            child: Column(
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

                              height: 450.00,
                              width: 300.00,
                              margin: new EdgeInsets.symmetric(vertical: 80),
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
                              MyStatelessWidget(),
                            )
                        )
                      ]
                  )
                ]
            )
        )
        )
    );
  }
}
class CustomListItem extends StatelessWidget {
  const CustomListItem({
    this.thumbnail,
    this.title,
    this.user,
    this.flatButton,
  });

  final Widget thumbnail;
  final String title;
  final String user;
  final Widget flatButton;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            child: _VideoDescription(
              title: title,
              user: user,
              flatbutton: flatButton,
            ),
          ),
          Center(
            child: thumbnail,
          ),
        ],
      ),
    );
  }
}

class _VideoDescription extends StatelessWidget {
  const _VideoDescription({
    Key key,
    this.title,
    this.user,
    this.viewCount,
    this.flatbutton,
  }) : super(key: key);

  final String title;
  final String user;
  final int viewCount;
  final Widget flatbutton;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 14.0,
            ),
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 2.0)),
          Text(
            user,
            style: const TextStyle(fontSize: 12.0, fontStyle: FontStyle.italic),
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 1.0)),
          Container(
            height: 30,
            width: 110,
            child:flatbutton,
          ),
        ],
      ),
    );
  }
}
class MyStatelessWidget extends StatelessWidget {
  MyStatelessWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8.0),
      itemExtent: 110.0,
      children: <CustomListItem>[
        CustomListItem(
          user: 'Enjoying life and living with love' ,
          thumbnail: CircleAvatar(
            backgroundImage: AssetImage('img/chica1.png'),
            radius: 40,
          ),
          flatButton: FlatButton(
            onPressed: () => {},
            color: Colors.blue[300],
            //padding: EdgeInsets.all(10.0),
            child: Row( // Replace with a Row for horizontal icon + text
              children: <Widget>[
                Icon(Icons.clear, color: Colors.white,),
                Text("Remove",style: TextStyle(color: Colors.white),)
              ],
            ),
          ),
          title: 'JIM DOE',
        ),
        CustomListItem(
          user: 'Enjoying life and living with love',
          thumbnail: CircleAvatar(
            backgroundImage: AssetImage('img/chico1.png'),
            radius: 40,
          ),
          flatButton: FlatButton(
            onPressed: () => {},
            color: Colors.blue[300],
            //padding: EdgeInsets.all(10.0),
            child: Row( // Replace with a Row for horizontal icon + text
              children: <Widget>[
                Icon(Icons.clear, color: Colors.white,),
                Text("Remove",style: TextStyle(color: Colors.white),)
              ],
            ),
          ),
          title: 'JANE DOE',
        ),

        CustomListItem(
          user: 'Enjoying life and living with love',
          thumbnail: CircleAvatar(
            backgroundImage: AssetImage('img/chica2.png'),
            radius: 40,
          ),
          flatButton: FlatButton(
            onPressed: () => {},
            color: Colors.blue[300],
            //padding: EdgeInsets.all(10.0),
            child: Row( // Replace with a Row for horizontal icon + text
              children: <Widget>[
                Icon(Icons.clear, color: Colors.white,),
                Text("Remove",style: TextStyle(color: Colors.white),)
              ],
            ),
          ),
          title: 'JONH DOE',
        ),

        CustomListItem(
          user: 'Enjoying life and living with love',
          thumbnail: CircleAvatar(
            backgroundImage: AssetImage('img/chico1.png'),
            radius: 40,
          ),
          flatButton: FlatButton(
            onPressed: () => {},
            color: Colors.blue[300],
            //padding: EdgeInsets.all(10.0),
            child: Row( // Replace with a Row for horizontal icon + text
              children: <Widget>[
                Icon(Icons.clear, color: Colors.white,),
                Text("Remove",style: TextStyle(color: Colors.white),)
              ],
            ),
          ),
          title: 'EK AUR DOE',
        ),
      ],
    );
  }
}