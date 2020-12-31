import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: 450,
            decoration: BoxDecoration(color: Colors.amber),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: TextField(
              // enabled: this._password != null && this._password.isNotEmpty,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                  const Radius.circular(12.0),
                )),
                hintStyle: TextStyle(),
                filled: true,
                labelText: 'اسم الحساب',
              ),
              // maxLength: 8,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: TextField(
              // enabled: this._password != null && this._password.isNotEmpty,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                  const Radius.circular(12.0),
                )),
                hintStyle: TextStyle(),
                filled: true,
                labelText: 'كلمة المرور',
              ),
              // maxLength: 8,
              obscureText: true,
            ),
          ),
          RaisedButton(
            child: Text("تسجيل دخول"),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
