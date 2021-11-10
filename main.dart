import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget customTitleList(String textTitle, double fontText, Color colorText) {
      return Container(
        padding: EdgeInsets.fromLTRB(5, 30, 0, 5),
        decoration: const BoxDecoration(
          color: Colors.black26,
        ),
        child: Align(
          alignment: Alignment.bottomLeft,
          child: Text(textTitle,
              style: TextStyle(fontSize: fontText, color: colorText)),
        ),
      );
    }

    return MaterialApp(
      title: 'Mailboxes',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Column(
          children: [

            Expanded(
              child: Column(
                children: [
                  Container(
                      padding: EdgeInsets.fromLTRB(0, 50, 0, 10),
                      child: Row(
                        children: [
                          Expanded(child: Text("")),
                          Expanded(
                            child: Text("Mailboxes",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 5),
                            child: Text(
                              "Done",
                              style: TextStyle(
                                color: Colors.blue,
                              ),
                            ),
                          )
                        ],
                      ),
                      decoration: const BoxDecoration(
                        color: Colors.black12,
                      )),
                  customTitleList("Mailboxes", 15, Colors.black45),
                  CustomRow(
                      text: "All inboxes",
                      icon: Icons.all_inbox,
                      colorIcon: Colors.black,
                      Valnum: 2),
                  CustomRow(
                      text: "ICloud",
                      icon: Icons.cloud,
                      colorIcon: Colors.black,
                      Valnum: 0),
                  CustomRow(
                      text: "Gmail",
                      icon: Icons.mail,
                      colorIcon: Colors.black,
                      Valnum: 99),
                  CustomRow(
                      text: "Hotmain",
                      icon: Icons.contact_mail,
                      colorIcon: Colors.black,
                      Valnum: 5),
                  CustomRow(
                      text: "VIP",
                      icon: Icons.stars_sharp,
                      colorIcon: Colors.yellow,
                      Valnum: 1),
                  customTitleList("Special folders", 15, Colors.black45),
                  CustomRow(
                      text: "Secure",
                      icon: Icons.security,
                      colorIcon: Colors.black,
                      Valnum: 0),
                  CustomRow(
                      text: "Notification",
                      icon: Icons.circle_notifications,
                      colorIcon: Colors.black,
                      Valnum: 5),
                ],
              ),
            ),
            Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                    border: Border(
                        top: BorderSide(width: 2.0, color: Colors.blue))),
                child: OutlinedButton(
                    onPressed: () {                      
                        print("hello");
                    },
                    child:
                        Text("Delete", style: TextStyle(color: Colors.black)))),
          ],
        ),
      ),
    );
  }
}

class CustomRow extends StatefulWidget {
  const CustomRow(
      {Key? key,
      required this.text,
      required this.icon,
      required this.colorIcon,
      required this.Valnum})
      : super(key: key);
  final String text;
  final IconData icon;
  final Color colorIcon;
  final int Valnum;

  @override
  _CustomRowState createState() => _CustomRowState();
}

class _CustomRowState extends State<CustomRow> {
  bool isCheck = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      
      padding: EdgeInsets.fromLTRB(5, 0, 5, 5),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 30),
            child: Checkbox(
              activeColor: Colors.black,
              checkColor: Colors.white,
              value: isCheck,
              onChanged: (bool? value) {
                isCheck = value!;
                setState(() {});
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(widget.icon, color: widget.colorIcon),
          ),
          Expanded(child: Text(widget.text)),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Text(widget.Valnum.toString()),
          )
        ],
      ),
      decoration: const BoxDecoration(
          border:
              Border(bottom: BorderSide(width: 1.0, color: Colors.black38))),
    );
  }
}
