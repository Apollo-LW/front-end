import 'package:flutter/material.dart';

class InstitutionAdmin extends StatefulWidget {
  @override
  _InstitutionAdminState createState() => _InstitutionAdminState();
}

class _InstitutionAdminState extends State<InstitutionAdmin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("الاعضاء"),
      ),
      body: Center(
        child: ListView(
          children: [
            AddMember(),
            InstitutionMember(
              name: " محمد الريماوي",
              ssn: 12345678,
              index: 1,
            ),
            InstitutionMember(
              name: " تحسين محسن",
              ssn: 98799123,
              index: 2,
            ),
            InstitutionMember(
              name: " فتحي عبدالفتاح",
              ssn: 2137023,
              index: 3,
            ),
            InstitutionMember(
              name: "مرفت محمود",
              ssn: 20000345678,
              index: 4,
            ),
            InstitutionMember(
              name: "جعفر تيسير",
              ssn: 1921003453231,
              index: 5,
            ),
            InstitutionMember(
              name: "خالد شياب",
              ssn: 19932345678,
              index: 6,
            ),
          ],
        ),
      ),
    );
  }
}

class InstitutionMember extends StatelessWidget {
  int ssn;
  String name;
  int index;
  InstitutionMember({this.name, this.ssn, this.index});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: ListTile(
        dense: true,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "$index )",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              "الاسم: ",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(name),
            Text(
              "الرقم الوطني: ",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(ssn.toString()),
            ButtonTheme(
              minWidth: 50.0,
              height: 50.0,
              child: Tooltip(
                message: "سحب العضوية",
                child: FlatButton(
                    onPressed: () {
                      showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title:
                              const Text('هل أنت متاكد من عملية سحب العضوية؟'),
                          content: Text("الاسم: $name \n الرقم الوطني: $ssn"),
                          actions: <Widget>[
                            FlatButton(
                              onPressed: () => Navigator.pop(context, 'لا'),
                              child: const Text('لا'),
                            ),
                            FlatButton(
                              onPressed: () => Navigator.pop(context, 'نعم'),
                              child: const Text('نعم'),
                            ),
                          ],
                        ),
                      ).then((returnVal) {
                        if (returnVal != null) {
                          Scaffold.of(context).showSnackBar(
                            SnackBar(
                              content: returnVal == "نعم"
                                  ? Text('لقد تم سحب عضوية $name ')
                                  : "",
                              action: SnackBarAction(
                                  label: 'حسنا', onPressed: () {}),
                            ),
                          );
                        }
                      });
                    },
                    child: Icon(
                      Icons.delete,
                      color: Colors.grey,
                    )),
              ),
            ),
          ],
        ),
      ),
      onTap: () {},
    );
  }
}

class AddMember extends StatefulWidget {
  @override
  AddMemberState createState() {
    return AddMemberState();
  }
}

class AddMemberState extends State<AddMember> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Container(
          margin: EdgeInsets.all(15),
          child: Column(children: <Widget>[
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: const InputDecoration(
                      // suffixIcon: Icon(Icons.account_box),
                      filled: true,
                      labelText: 'الاسم الاول',
                    ),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Expanded(
                  child: TextField(
                    decoration: const InputDecoration(
                      // suffixIcon: Icon(Icons.account_box),
                      filled: true,
                      labelText: 'اسم العائلة',
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                suffixIcon: Icon(Icons.account_box),
                filled: true,
                labelText: 'الرقم الوطني',
              ),
            ),
            RaisedButton(
              onPressed: () {},
              child: Text("إضافة عضو جديد"),
            ),
          ]),
        ));
  }
}
