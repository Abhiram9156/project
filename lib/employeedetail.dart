import 'package:apiproject/addemployee.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class detail extends StatefulWidget {
  const detail({Key? key}) : super(key: key);

  @override
  State<detail> createState() => _detailState();
}

class _detailState extends State<detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("EmployeeDetails"),),
      body: Column(
        children: [
          Expanded(flex: 1,
            child: Container(
              height: 100,
              width: double.infinity,
              color: Colors.white,
              child: CircleAvatar(backgroundImage: NetworkImage("jhgfds")),
              
            ),
          ),
          Expanded(flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Container(decoration: BoxDecoration(color: Colors.grey.withOpacity(0.5),borderRadius: BorderRadius.circular(10)),
                height: 100,
                width: double.infinity,

                child: Column(
                  children: [
                    Text("Name"),
                    Text("temperory"),

                    Padding(
                      padding: const EdgeInsets.fromLTRB(8,0,0,0),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Text("ContactNumber",style: TextStyle(fontSize: 16)),
                              Text("date",style: TextStyle(fontSize: 16)),
                            ],
                          ),
                          SizedBox(width: 150),
                          Column(
                            children: [
                              Text("Email",style: TextStyle(fontSize: 16)),
                              Text("date",style: TextStyle(fontSize: 16)),

                            ],
                          ),

                          SizedBox(height: 140),

                        ],

                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(9,0,0,0),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Text("DateOfBirth",style: TextStyle(fontSize: 16)),
                              Text("12-02-22",style: TextStyle(fontSize: 16)),
                            ],
                          ),
                          SizedBox(width: 180),
                          Column(
                            children: [
                              Text("Gender",style: TextStyle(fontSize: 16)),
                              Text("Male",style: TextStyle(fontSize: 16)),
                            ],

                          ),
                        ],



                      ),

                    ),
                    Text("Address",style: TextStyle(fontSize: 16)),
                    Text("123",style: TextStyle(fontSize: 16)),




                  ],


                    ),



                ),
            ),




            ),



        ],


      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) =>addemployee(),));
      },child: Icon(Icons.add),
      ),


    );
  }
}

