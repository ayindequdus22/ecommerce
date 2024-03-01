import 'package:ecommerce/widgets/cancel_button.dart';
import 'package:flutter/material.dart';

import 'package:ecommerce/color.dart';
import 'package:ecommerce/pages/splash_screen.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController userNameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    @override
    void dispose() {
      // Clean up the controller when the widget is removed from the widget tree
      passwordController.dispose();
      userNameController.dispose();
      emailController.dispose();
      super.dispose();
    }

    return Scaffold(
        body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height / 4.5,
            ),
            child: Container(
              margin: const EdgeInsets.only(bottom: 50),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.height / 5,
                            padding: const EdgeInsets.all(20),
                            height: MediaQuery.of(context).size.height / 5,
                            decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(100)),
                              boxShadow: [
                                BoxShadow(
                                  blurStyle: BlurStyle.outer,
                                  color: Color.fromARGB(75, 0, 0, 0),
                                  blurRadius: 4.0,
                                )
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset('assets/images/e-shop.png'),
                            ),
                          ),
                          const Text(
                            "Create Account",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Form(
                            key: _formKey,
                            child: Column(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(
                                      top: 20, bottom: 10),
                                  child: TextFormField(
                                    controller: emailController,
                                    validator: (String? value) {
                                      if (!value!.endsWith("@gmail.com")) {
                                        return 'Please enter a valid email ';
                                      }
                                      return null;
                                    },
                                    decoration: const InputDecoration(
                                      hintText: 'E-mail',
                                      filled: true,
                                      fillColor: Color.fromARGB(17, 0, 0, 0),
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                          borderSide: BorderSide(
                                              color: Colors.black12,
                                              style: BorderStyle.solid)),
                                      hintStyle: TextStyle(fontSize: 20),
                                    ),
                                  ),
                                ),
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
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
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
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                        borderSide: BorderSide(
                                            color: Colors.black12,
                                            style: BorderStyle.solid)),
                                    hintStyle: TextStyle(fontSize: 20),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              if (_formKey.currentState!.validate()) {
                                // If the form is valid, display a snackbar with the form data
                                Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                        builder: (BuildContext context) {
                                  return SplashScreen(
                                      userName: userNameController.text);
                                }));
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(SnackBar(
                                  content: Text(
                                    'Submitted Name: ${passwordController.text}, Email: ${emailController.text}',
                                  ),
                                ));
                              }
                            },
                            child: Container(
                              margin:
                                  const EdgeInsets.only(top: 60, bottom: 15),
                              width: double.infinity,
                              height: 70,
                              alignment: Alignment.center,
                              decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
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
                          const CancelButton(),
                        ],
                      ),
                    ),
                  ]),
            )));
  }
}
