import 'package:flutter/material.dart';

class SettingsUI extends StatefulWidget {
  const SettingsUI({Key? key}) : super(key: key);

  @override
  State<SettingsUI> createState() => _SettingsUIState();
}

class _SettingsUIState extends State<SettingsUI> {

  bool sw1 = true;
  bool sw2 = false;
  bool sw3 = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text("Settings UI"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: Text(
                "Common",
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(width: 0.1, color: Colors.black54)),
                  ),
                  child: ListTile(
                    leading: Icon(Icons.language),
                    title: Text("Language"),
                    subtitle: Text("English"),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                        top: BorderSide(width: 0.1, color: Colors.black54)),
                  ),
                  child: ListTile(
                    leading: Icon(Icons.cloud_outlined),
                    title: Text("Environment"),
                    subtitle: Text("Production"),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Text(
                "Account",
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(width: 0.1, color: Colors.black54)),
                  ),
                  child: ListTile(
                    leading: Icon(Icons.call),
                    title: Text("Phone Number"),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(width: 0.1, color: Colors.black54),
                      bottom: BorderSide(width: 0.1, color: Colors.black54),
                    ),
                  ),
                  child: ListTile(
                    leading: Icon(Icons.email),
                    title: Text("Email"),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                        top: BorderSide(width: 0.1, color: Colors.black54)),
                  ),
                  child: ListTile(
                    leading: Icon(Icons.output_sharp),
                    title: Text("Sign out"),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Text(
                "Security",
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(width: 0.1, color: Colors.black54)),
                  ),
                  child: ListTile(
                    leading: Icon(Icons.phonelink_lock),
                    title: Text("Lock app in background"),
                      trailing: Switch(
                        activeColor: Colors.red,
                        value: sw1,
                        onChanged: (value) {
                          setState(() {
                            sw1 = value;
                          });
                        },
                      ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(width: 0.1, color: Colors.black54),
                      bottom: BorderSide(width: 0.1, color: Colors.black54),
                    ),
                  ),
                  child: ListTile(
                    leading: Icon(Icons.fingerprint),
                    title: Text("Use fingerprint"),
                      trailing: Switch(
                        activeColor: Colors.red,
                        value: sw2,
                        onChanged: (value) {
                          setState(() {
                            sw2 = value;
                          });
                        },
                      )
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                        top: BorderSide(width: 0.1, color: Colors.black54)),
                  ),
                  child: ListTile(
                      leading: Icon(Icons.lock),
                      title: Text("Change password"),
                      trailing: Switch(
                        activeColor: Colors.red,
                        value: sw3,
                        onChanged: (value) {
                          setState(() {
                            sw3 = value;
                          });
                        },
                      ),),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
