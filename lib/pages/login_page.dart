import 'package:flutter/material.dart';
import 'package:personaleco/color.dart';
import 'package:personaleco/widgets/cancel_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).size.height / 2,
      ),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Text(
              'Login',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w800,
                  fontSize: 40),
            ),
            const Row(
              children: [
                Text(
                  'Good to see you back! ',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                Icon(
                  Icons.favorite,
                  color: bluish,
                  size: 30,
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(top: 30),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Email",
                  filled: true,
                  fillColor: Color.fromARGB(17, 0, 0, 0),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(
                          color: Colors.black12, style: BorderStyle.solid)),
                  hintStyle: TextStyle(fontSize: 20),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.remove_red_eye_outlined),
                  hintText: "Password",
                  filled: true,
                  fillColor: Color.fromARGB(17, 0, 0, 0),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(
                          color: Colors.black12, style: BorderStyle.solid)),
                  hintStyle: TextStyle(fontSize: 20),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 30, bottom: 15),
              width: double.infinity,
              height: 70,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: bluish,
              ),
              child: const Text(
                'Done',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: const CancelButton(),
            )
          ],
        ),
      ),
    ));
  }
}
