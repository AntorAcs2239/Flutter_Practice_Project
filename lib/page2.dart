import 'dart:html';

import 'package:flutter/material.dart';

class page2 extends StatefulWidget {
  @override
  State<page2> createState() => _page2State();
}
class _page2State extends State<page2> {
  String name="";
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        child: Column(
          children: [
            Image.asset(
              'assest/images/icon2.png',
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 20,
            ),
            Text('Donar Name:$name',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                )),
           Padding(
             padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 32),
             child: Column(
               children: [
                 TextFormField(
                   decoration: InputDecoration(
                       hintText: 'Enter your Username', labelText: 'Username'),
                   onChanged: (value){
                     name=value;
                     setState(() {

                     });
                   },
                 ),
                 TextFormField(
                  obscureText: true,
                   decoration: InputDecoration(
                       hintText: 'Enter your Password', labelText: 'Password',)
                 ),
               ],
             ),
           ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              child: Text("Login",style: TextStyle(color:Colors.white),),
              onPressed: (){

              },
            )
          ],
        ),
      ),
    );
  }
}
