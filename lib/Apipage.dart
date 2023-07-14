import 'dart:convert';

import 'package:apiproject/employee.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class api extends StatefulWidget {
  const api({Key? key}) : super(key: key);

  @override
  State<api> createState() => _apiState();

}

class _apiState extends State<api> {
  TextEditingController username= TextEditingController();
  TextEditingController password=TextEditingController();
  apiLogin()
  async {


    var body ={
      "email":username.text,
      "password":password.text,
    };

    Response respose =await post(Uri.parse("http://training.pixbit.in/api/login"),
        body: body);

    print(respose.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            Expanded(
                child: Container(color: Colors.teal,width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0,0,150,0),
                    child: Column(
                      children: [
                        SizedBox(height: 150),
                        Text("Welcome Back",style: TextStyle(fontSize: 35)),
                        Text("Please login your account"),
                      ],
                    ),
                  ),
                )),
            Expanded(flex: 2,
                child: Container(
                  child: Column(
                    children: [
                      SizedBox(height: 50),
                      TextField(
                        controller:TextEditingController() ,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.mail),
                          labelText: "Username",
                          hintStyle: TextStyle(fontSize: 20,color: Colors.white),
                          //
                          //
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ),                      SizedBox(height: 40),
                      TextField(
                         controller: TextEditingController(),
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.vpn_key_outlined),
                          labelText: "password",

                          hintStyle: TextStyle(fontSize: 20,color: Colors.white),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),


                        ),
                      ),
                      SizedBox(height: 30),
                      ElevatedButton(onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => employee(),));
                        var response;
                        print('Request failed with status" ${response.body}.');


                      },
                        child: Text("signup",style: TextStyle(fontSize: 20),),),

                    ],
                  ),
                ),
                )

          ],
        ),

    );
  }
}
