import 'package:ecommerce/widgets/cancel_button.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/color.dart';
import 'package:ecommerce/pages/splash_screen.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController passwordController = TextEditingController();
  TextEditingController userNameController = TextEditingController();
   @override
    void dispose() {
      passwordController.dispose();
      userNameController.dispose();
      super.dispose();
    }
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
            const SizedBox(
              height: 20,
            ),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    child: TextFormField(
                      controller: userNameController,
                      validator: (String? value) {
                        if (value!.isEmpty || value.length <= 3) {
                          return 'Please enter a valid username ';
                        }
                        return null;
                      },
                      // onChanged: (String val) => searchTerm = val,
                      decoration: const InputDecoration(
                        hintText: 'Username',
                        filled: true,
                        fillColor: Color.fromARGB(17, 0, 0, 0),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(
                                color: Colors.black12,
                                style: BorderStyle.solid)),
                        hintStyle: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                  TextFormField(
                    controller: passwordController,
                    validator: (String? value) {
                      if (value!.length <= 8) {
                        return 'Password chararcters must be 8-10 long';
                      } else {
                        return null;
                      }
                    },
                    decoration: const InputDecoration(
                      hintText: 'Password',
                      filled: true,
                      fillColor: Color.fromARGB(17, 0, 0, 0),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(
                              color: Colors.black12, style: BorderStyle.solid)),
                      hintStyle: TextStyle(fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                if (_formKey.currentState!.validate()) {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (BuildContext context) {
                    return SplashScreen(userName: userNameController.text);
                  }));
                }
              },
              child: Container(
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
