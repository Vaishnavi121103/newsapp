import 'package:flutter/material.dart';

class Signin extends StatefulWidget {
  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.white,
          ),
          Container(
            alignment: Alignment.topCenter,
            height: MediaQuery.of(context).size.height * 0.85,
            decoration: BoxDecoration(
                color: Color(0xFFFe0d7d1),
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.elliptical(350, 170))),
          ),
          Container(
            alignment: Alignment.topCenter,
            height: MediaQuery.of(context).size.height * 0.58,
            decoration: BoxDecoration(
                color: Color(0xFFFd8448c),
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.elliptical(340, 200))),
          ),


          
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            
            children: [
              
              Text('data')
            ],
            
            
          )
          
          


        ],

      ),
    );
  }
}


