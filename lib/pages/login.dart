import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: content (),
    );
  }

  Widget content(){
    return Column(
      children: [
        Container(
          height: 280,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xFFFF884B),
            borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(40),
            bottomLeft: Radius.circular(40),
            topRight: Radius.circular(40),
            topLeft: Radius.circular(40),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Image.asset('assets/logo.png'),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(50, 5, 50, 10),
          child: Row(
            children: [
              Text("Username : "),
              SizedBox(width: 10),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFFF884B),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0,3)
                      )
                    ]


                  ),
                  child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText:' Enter Your  Handpone'),
                  ),
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}