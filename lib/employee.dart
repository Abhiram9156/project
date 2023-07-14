import 'package:apiproject/addemployee.dart';
import 'package:apiproject/employeedetail.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class employee extends StatefulWidget {
  const employee({Key? key}) : super(key: key);

  @override
  State<employee> createState() => _employeeState();
}

class _employeeState extends State<employee> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Employee")),
      body: ListView.builder(itemCount: 6,
        itemBuilder: (context,index) {
         return ListTile(onTap: () {
           Navigator.push(context, MaterialPageRoute(builder: (context) => detail(),));

         },
           leading: CircleAvatar(),
           title: Text("Name"),
           subtitle: Text("123456"),
         );

        }
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => addemployee(),));

      },child: Icon(Icons.add),
      ),
    );

  }
}
