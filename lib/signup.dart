import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:newsapp/Signin.dart';

import 'auth.dart';

class Signup extends StatefulWidget {
  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {

  final name = TextEditingController();
  final email = TextEditingController();
  final pass = TextEditingController();
  final AuthService _auth = AuthService();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            Container(
              color: Color(0xFFFe0d7d1),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                alignment: Alignment.bottomRight,
                height: MediaQuery.of(context).size.height * 0.75,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                    BorderRadius.only(topLeft: Radius.elliptical(350, 180))),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                alignment: Alignment.bottomRight,
                height: MediaQuery.of(context).size.height * 0.4,
                decoration: BoxDecoration(
                    color: Color(0xFFFd8448c),
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(800))),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.1,
                      right: MediaQuery.of(context).size.width * 0.1),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Sign up',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 50,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'We are happy to see you here!',
                        style: TextStyle(
                          color: Color(0xFFFd8448c),
                        ),
                      ),
                    ],
                  ),
                ),
                Form(
                  autovalidateMode: AutovalidateMode.always,
                  key: _formKey,

                  child: Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.07,
                        right: MediaQuery.of(context).size.width * 0.07,
                        top: MediaQuery.of(context).size.height * 0.01),
                    child: Column(
                      children: [
                        TextFormField(
                          controller: name,

                          decoration: InputDecoration(

                              label: Text(
                                'Username',
                                style: TextStyle(color: Colors.black87, fontSize: 18),
                              ),
                              icon: Icon(
                                Icons.person_outline,
                                color: Colors.black87,
                              ),
                              labelStyle: TextStyle(fontSize: 18)),
                          style: TextStyle(
                              color: Colors.black87, fontSize: 18, overflow: null),
                          keyboardType: TextInputType.name,
                          validator: (value) {
                            if (value == '') {
                              return 'Can\'t be null';
                            }
                          },
                        ),
                        TextFormField(
                          controller: email,

                          decoration: InputDecoration(
                              label: Text(
                                'Email address',
                                style: TextStyle(color: Colors.black87, fontSize: 18),
                              ),
                              icon: Icon(
                                Icons.mail_outline_rounded,
                                color: Colors.black87,
                              ),
                              labelStyle: TextStyle(fontSize: 18)),
                          style: TextStyle(
                              color: Colors.black87, fontSize: 18, overflow: null),
                          keyboardType: TextInputType.emailAddress,
                          validator: (value) {
                            if (value == '') {
                              return 'Can\'t be null';
                            }
                          },
                        ),
                        TextFormField(
                          controller: pass,
                          decoration: InputDecoration(
                              label: Text(
                                'Password',
                                style: TextStyle(color: Colors.black87, fontSize: 18),
                              ),
                              icon: Icon(
                                Icons.security_outlined,
                                color: Colors.black87,
                              ),
                              labelStyle: TextStyle(fontSize: 18)),
                          style: TextStyle(
                              color: Colors.black87, fontSize: 18, overflow: null),
                          keyboardType: TextInputType.visiblePassword,
                          validator: (value) {
                            if (value == '') {
                              return 'Can\'t be null';
                            }
                          },
                        ),
                        Center(
                          child: Container(
                              alignment: Alignment.center,
                              margin: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.height * 0.08),
                              child: ElevatedButton(
                                onPressed: ()async {
                                 dynamic res = await _auth.registerEmailPassword(LoginUser(email: email.text,password: pass.text));


                                },
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.black,
                                    shape:
                                    StadiumBorder(side: BorderSide(width: 0.1)),
                                    minimumSize: Size(
                                        MediaQuery.of(context).size.width * 0.95,
                                        MediaQuery.of(context).size.height * 0.063)),
                                child: Text('Sign up me'),
                              )),
                        ),
                        Container(
                            alignment: Alignment.center,
                            margin: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * 0.03),
                            // padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height*0.03),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                GestureDetector(
                                  onTap: (){
                                    Navigator.of(context).push(CupertinoPageRoute(builder: (context) => Signin()));
                                  },
                                  child: Text(
                                    'Already have an account?',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: GestureDetector(
                                    onTap: (){



                                    },
                                    child: Text(
                                      'Need help?',
                                      style: TextStyle(color: Colors.white,decoration: TextDecoration.underline),
                                    ),
                                  ),
                                )
                              ],
                            ))
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
