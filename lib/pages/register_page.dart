import 'package:flutter/material.dart';
import 'package:personaleco/color.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
          padding: EdgeInsets.only(
    top: MediaQuery.of(context).size.height / 3.5,      ),
        child: Container(
          margin:const EdgeInsets.only(bottom: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
      
              Container(alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child:Column(
            children: [
                  Container(
              width: MediaQuery.of(context).size.height / 5,
              padding: const EdgeInsets.all(20),
              height: MediaQuery.of(context).size.height / 5,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(100)),
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
                child: Image.asset('images/e-shop.png'),
              ),
            ),
           
            const Text("Create Account" , style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                    ),),
                    Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top:20,bottom:10),
                          child: const TextField(decoration: InputDecoration(
                            hintText: 'E-mail', filled: true,
                                        fillColor: Color.fromARGB(17, 0, 0, 0), 
                                border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10)),
                           borderSide: BorderSide(color: Colors.black12,style: BorderStyle.solid)
                           ),
                                              hintStyle:TextStyle(fontSize: 20),
                                              ),
                          ),
                        ),
                        const TextField(decoration: InputDecoration(
                          hintText: 'Password', filled: true,
                fillColor: Color.fromARGB(17, 0, 0, 0), 
                              border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10)),
                         borderSide: BorderSide(color: Colors.black12,style: BorderStyle.solid)
                         ),
                      hintStyle:TextStyle(fontSize: 20),
                      ),),
                      ],
                      
                    ),
                     Container(
                      margin:const EdgeInsets.only(top: 60,bottom: 15),
                  width: double.infinity,
                  height: 70,alignment: Alignment.center,
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
                     TextButton(onPressed: (){
                      Navigator.of(context).pop();
                     }, child:const Text('Cancel',style: TextStyle(color:  Color.fromARGB(164, 0, 0, 0),fontSize: 24),))
          ],),
        ),])
            ),
      ));
  }
}