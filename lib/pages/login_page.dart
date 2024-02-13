import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        margin:const EdgeInsets.symmetric(horizontal: 10),
        child: const Column(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.end,
          children: [
          Text('Login',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w800,fontSize: 
          40),),
          Row(
            children: [

          Text('Good to see you back! ',style: TextStyle(color: Colors.black,fontSize: 20),),Icon(Icons.favorite)
            ],
          )
        ],),
      ),
    );
  }
}