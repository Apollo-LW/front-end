import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:Apollo/pages/home/home.dart';
import 'package:Apollo/components/bottom_navigation_bar_controller.dart';
import 'package:Apollo/views/signup.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (1 == 2) {
      return BottomNavigationBarController();
    } else {
      return Scaffold(
        body: ListView(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(20, 80, 20, 20),
              child: Lottie.asset(
                'assets/animations/class room.json',
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
                  labelText: 'البريد الاكتروني/ الرقم الوطني',
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
                color: Colors.lightBlue[700],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Text(
                  "تسجيل دخول",
                  style: TextStyle(color: Colors.white),
                ),
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
            Center(
              child: Text("ليس لديك حساب؟"),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              decoration: BoxDecoration(
                borderRadius:
                    const BorderRadius.all(const Radius.circular(50.0)),
              ),
              child: RaisedButton(
                color: Colors.lightBlue[900],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Text(
                  "إنشاء حساب جديد",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Signup()),
                  );
                },
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              decoration: BoxDecoration(
                borderRadius:
                    const BorderRadius.all(const Radius.circular(50.0)),
              ),
              child: RaisedButton(
                color: Colors.lightBlue[900],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Text(
                  "تصفح دون حساب",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => BottomNavigationBarController()),
                  );
                },
              ),
            ),
          ],
        ),
      );
    }
  }
}
