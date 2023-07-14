import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class addemployee extends StatelessWidget {
  const addemployee({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("AddEmployee")),
      body: Column(
        children: [
          Container(
            height: 130,
            width: double.infinity,
            color: Colors.white,
            child: CircleAvatar(backgroundImage: NetworkImage("fdsa")),
          ),
          Expanded(flex: 1,
            child: ListView(
              children:[ Container(
                width: double.infinity,
                color: Colors.white,
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    TextField(
                      decoration: InputDecoration(labelText: "EnterName",border: OutlineInputBorder(borderRadius: BorderRadius.circular(40))),
                    ),
                    SizedBox(height: 20),
                    TextField(
                      decoration: InputDecoration(labelText: "LastName",border: OutlineInputBorder(borderRadius: BorderRadius.circular(40))),
                    ),
                    SizedBox(height: 20),
                    TextField(
                      decoration: InputDecoration(labelText: "MobileNumber",border: OutlineInputBorder(borderRadius: BorderRadius.circular(40))),
                    ),
                    SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(labelText: "Email",border: OutlineInputBorder(borderRadius: BorderRadius.circular(40))),
              ),
                    SizedBox(height: 20),
              TextField(maxLines: 5,
                decoration: InputDecoration(
                    labelText: "address",hintMaxLines: 30,border: OutlineInputBorder(borderRadius: BorderRadius.circular(40))),
              ),
               SizedBox(height: 20),
               TextField(
                 decoration: InputDecoration(labelText: "DateofBirth",border: OutlineInputBorder(borderRadius: BorderRadius.circular(40))) ,
               ),
                    SizedBox(height: 20),
                    TextField(
                      decoration: InputDecoration(labelText: "Designation",border: OutlineInputBorder(borderRadius: BorderRadius.circular(40))) ,
                    ),
                    TextField(
                      decoration: InputDecoration(labelText: "Gender",border: OutlineInputBorder(borderRadius: BorderRadius.circular(40))),
                    ),
                    SizedBox(height: 20),
                    SizedBox(width: 350,
                      child: FloatingActionButton.extended(onPressed: () {
                      },
                        label: Text("Save"),
                      ),
                    )

                  ],
                ),

              ),
            ]
            ),
          )
        ],
      ),

    );
  }
}
