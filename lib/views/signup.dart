import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:Apollo/pages/home/home.dart';
import 'package:Apollo/components/bottom_navigation_bar_controller.dart';
import 'package:Apollo/views/login.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  int _radioVal = 0;
  @override
  Widget build(BuildContext context) {
    if (1 == 2) {
      return BottomNavigationBarController();
    } else {
      return Scaffold(
        body: ListView(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: Lottie.asset(
                'assets/animations/co-op 4.json',
                height: 300,
                // decoration: BoxDecoration(color: Colors.amber),
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
                  suffixIcon: Icon(Icons.account_box),
                  filled: true,
                  labelText: 'الرقم الوطني',
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
                  suffixIcon: Icon(Icons.account_box),
                  filled: true,
                  labelText: 'البريد الإلكتروني',
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
                  suffixIcon: Icon(Icons.account_box),
                  filled: true,
                  labelText: 'الاسم الاول',
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
                  suffixIcon: Icon(Icons.account_box),
                  filled: true,
                  labelText: 'اسم العائلة',
                ),
                // maxLength: 8,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: Row(
                children: <Widget>[
                  SizedBox(
                    width: 20,
                  ),
                  Text("النوع:"),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    child: Row(
                      children: [
                        Radio(
                          value: 0,
                          groupValue: this._radioVal,
                          onChanged: (int value) {
                            setState(() => this._radioVal = value);
                          },
                        ),
                        Text("ذكر"),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    height: 80,
                    child: Row(
                      children: [
                        Radio(
                          value: 1,
                          groupValue: this._radioVal,
                          onChanged: (int value) {
                            setState(() => this._radioVal = value);
                          },
                        ),
                        Text("انثى"),
                      ],
                    ),
                  ),
                ],
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
                  suffixIcon: Icon(Icons.security),
                ),
                // maxLength: 8,
                obscureText: true,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              decoration: BoxDecoration(
                borderRadius:
                    const BorderRadius.all(const Radius.circular(50.0)),
              ),
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Text("إنشاء حساب جديد"),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => BottomNavigationBarController()),
                  );
                },
              ),
            ),
            Divider(),
            Center(child: Text("هل لديك حساب مسبقا؟")),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              decoration: BoxDecoration(
                borderRadius:
                    const BorderRadius.all(const Radius.circular(50.0)),
              ),
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Text("تسجيل دخول"),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
      );
    }
  }
}
