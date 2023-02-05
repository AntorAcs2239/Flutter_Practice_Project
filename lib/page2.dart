import 'package:firstflutter/Home.dart';
import 'package:firstflutter/main.dart';
import 'package:firstflutter/utils/routes.dart';
import 'package:flutter/material.dart';

class page2 extends StatefulWidget {
  @override
  State<page2> createState() => _page2State();
}

class _page2State extends State<page2> {
  String name = "";
  bool flag = false;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Image.asset(
              'assest/images/icon2.png',
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 20,
            ),
            Text('Donar name:$name',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                )),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: 'Enter your Username', labelText: 'Username'),
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
                  ),
                  TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Enter your Password',
                        labelText: 'Password',
                      )),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Material(
              borderRadius: BorderRadius.circular(flag ? 50 : 10),
              color: Colors.green,
              child: InkWell(
                onTap: () async {
                  setState(() {
                    flag = true;
                  });
                  await Future.delayed(Duration(seconds: 1));
                  await Navigator.pushNamed(context, All_Routes.home);
                  setState(() {
                    flag = false;
                  });
                },
                child: AnimatedContainer(
                  duration: Duration(seconds: 1),
                  width: flag ? 50 : 100,
                  height: 50,
                  alignment: Alignment.center,
                  child: flag
                      ? Icon(
                          Icons.done,
                          color: Colors.white,
                        )
                      : Text(
                          'Login',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                ),
              ),
            )
            // ElevatedButton(
            //   child: Text(
            //     "Login",
            //     style: TextStyle(color: Colors.white),
            //   ),
            //   onPressed: () {
            //     //Navigator.push(context, home())
            //   },
            // )
          ],
        ),
      ),
    );
  }
}
