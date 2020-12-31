import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:Apollo/views/login.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "حسابي",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(0, 20, 0, 10),
              child: Stack(
                children: [
                  Center(
                    child: CircleAvatar(
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          ClipOval(
                            child: Image.asset(
                              "assets/images/apollo.png",
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            right: -10,
                            child: ButtonTheme(
                              minWidth: 50.0,
                              height: 50.0,
                              child: ClipOval(
                                child: RaisedButton(
                                    onPressed: () {},
                                    child: Icon(
                                      Icons.edit,
                                      color: Colors.white,
                                      size: 15,
                                    )),
                              ),
                            ),
                          ),
                        ],
                      ),
                      minRadius: 60,
                      maxRadius: 60,
                    ),
                  ),
                ],
              ),
            ),
            Center(
                child: Text(
              "محمد الريماوي",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            )),
            Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.grey[350],
                      width: 1.0,
                    ),
                  ),
                ),
                child: ListTile(
                  title: Text("الرقم الوطني"),
                  subtitle: Text("12345678"),
                  onTap: () {},
                )),
            Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.grey[350],
                      width: 1.0,
                    ),
                  ),
                ),
                child: ListTile(
                  trailing: Icon(Icons.edit),
                  title: Text("رقم الهاتف"),
                  subtitle: Text("0798168424"),
                  onTap: () {
                    showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        content: Container(
                          child: TextField(
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                              labelText: "ادخل رقم الهاتف الجديد",
                              hintText: "0799999999",
                            ),
                          ),
                        ),
                        actions: <Widget>[
                          FlatButton(
                            onPressed: () => Navigator.pop(context, 'إلغاء'),
                            child: const Text('إلغاء'),
                          ),
                          FlatButton(
                            onPressed: () => Navigator.pop(context, 'حفظ'),
                            child: const Text('حفظ'),
                          ),
                        ],
                      ),
                    ).then((returnVal) {
                      if (returnVal != null) {
                        Scaffold.of(context).showSnackBar(
                          SnackBar(
                            content: Text('You clicked: $returnVal'),
                            action:
                                SnackBarAction(label: 'OK', onPressed: () {}),
                          ),
                        );
                      }
                    });
                  },
                )),
            Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.grey[350],
                      width: 1.0,
                    ),
                  ),
                ),
                child: ListTile(
                    trailing: Icon(Icons.edit),
                    title: Text("البريد الإليكتروني"),
                    subtitle: Text("MohRimawiz@gmail.com"),
                    onTap: () {
                      showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          content: Container(
                            child: TextField(
                              decoration: InputDecoration(
                                labelText: "ادخل البريد الاكتروني الجديد",
                                hintText: "example@example.com",
                              ),
                            ),
                          ),
                          actions: <Widget>[
                            FlatButton(
                              onPressed: () => Navigator.pop(context, 'إلغاء'),
                              child: const Text('إلغاء'),
                            ),
                            FlatButton(
                              onPressed: () => Navigator.pop(context, 'حفظ'),
                              child: const Text('حفظ'),
                            ),
                          ],
                        ),
                      ).then((returnVal) {
                        if (returnVal != null) {
                          Scaffold.of(context).showSnackBar(
                            SnackBar(
                              content: Text('You clicked: $returnVal'),
                              action:
                                  SnackBarAction(label: 'OK', onPressed: () {}),
                            ),
                          );
                        }
                      });
                    })),
            Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.grey[350],
                      width: 1.0,
                    ),
                  ),
                ),
                child: ListTile(
                  trailing: Icon(Icons.edit),
                  title: Text("تاريخ الميلاد"),
                  subtitle: Text("29/5/2020"),
                  onTap: () {
                    showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2018),
                      lastDate: DateTime(2025),
                    ).then((DateTime value) {
                      if (value != null) {
                        Scaffold.of(context).showSnackBar(
                          SnackBar(content: Text('Selected datetime: $value')),
                        );
                      }
                    });
                  },
                )),
            Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.grey[350],
                      width: 1.0,
                    ),
                  ),
                ),
                child: ListTile(
                  title: Text("تاريخ التسجيل"),
                  subtitle: Text("31/12/2020"),
                  onTap: () {},
                )),
            Align(
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Text("تسجيل خروج"),
                onPressed: () {
                  //  Navigator.pop(context);
                  Navigator.popUntil(context, (route) => false);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Login()),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
