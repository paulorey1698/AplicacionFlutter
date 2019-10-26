import 'package:flutter/material.dart';
import './Chat.dart';
import './Home.dart';
import './Conection.dart';
import './Profile.dart';

//void main() => runApp(MyApp1());

class MyApp1 extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return MyAppState();
  }
}

class MyAppState extends State<MyApp1>{
  int _selectedPage = 0;
  final _pageOptions = [
    Home(),
    Conection(),
   Chat(),
    Profile(),
  ] ;
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Ejercicio1',
      theme: ThemeData(primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: _pageOptions[_selectedPage],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedPage,
          onTap: (int index){
            setState(() {
              _selectedPage=index;
            });
          },
          items: [

            BottomNavigationBarItem(
              icon: Icon(Icons.home,color: Colors.black,),
              title: Text('Home',style: TextStyle(color: Colors.black),),
              backgroundColor: Colors.green,

            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border,color: Colors.black,),
              title: Text('Conections',style: TextStyle(color: Colors.black),),
              backgroundColor: Colors.red,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat_bubble_outline, color: Colors.black,),
              title: Text('Chats',style: TextStyle(color: Colors.black),),
              backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline,color: Colors.black,),
              title: Text('Profile',style: TextStyle(color: Colors.black),),
              backgroundColor: Colors.grey,
            ),

          ],
        ),
      ),
    );
  }
}