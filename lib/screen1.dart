import 'package:flutter/material.dart';
import 'fade.dart';
import 'scree2.dart';
class MyApp1 extends StatefulWidget {
  MyApp1({Key key}) : super(key: key);

  @override
  _MyApp1State createState() => _MyApp1State();
}

class _MyApp1State extends State<MyApp1> {
  @override
  Widget build(BuildContext context) {
     final width = MediaQuery.of(context).size.width;
    return MaterialApp(
        home:SafeArea (
                  child: Scaffold(
          backgroundColor: Colors.white,
          body: SafeArea(
                      child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 500,
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        top: 100,
                        height: 400,
                        width: width,
                        child: FadeAnimation(1, Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('image/diamond.png'),
                              fit: BoxFit.fill
                            )
                          ),
                        )),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      FadeAnimation(1.5, Center(child: Text("I Am Rich", style: TextStyle(color: Color.fromRGBO(49, 39, 79, 1), fontWeight: FontWeight.bold, fontSize: 30),))),
                      SizedBox(height: 30,),
                      FadeAnimation(1.7, Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(196, 135, 198, .3),
                              blurRadius: 20,
                              offset: Offset(0, 10),
                            )
                          ]
                        ),
                     
                      
                    
                      )),
                      SizedBox(height: 20,),
                      SizedBox(height: 30,),
                      FadeAnimation(1.9, Container(
                        height: 50,
                        margin: EdgeInsets.symmetric(horizontal: 60),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Color.fromRGBO(49, 39, 79, 1),
                        ),
                        child: Center(
                          child: GestureDetector( onTap: (){      Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) => MyApp()
                            ));       }, child:Text("Certificate", style: TextStyle(color: Colors.white),),),
                        ),
                      )),
                      SizedBox(height: 30,),
                    ],
                  ),
                )
              ],
            ),
          ),
      ),
        ),
    );
  }
}
