import 'package:flutter/material.dart';

import 'package:gallery/studies/rally/data.dart';
import 'package:gallery/studies/rally/login.dart';

class SettingsView extends StatefulWidget {
  @override
  _SettingsViewState createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  List<Widget> items = DummyDataService.getSettingsTitles()
      .map((title) => _SettingsItem(title))
      .toList();

  @override
  Widget build(BuildContext context) {
    return ListView(children: items);
  }
}

class _SettingsItem extends StatelessWidget {
  const _SettingsItem(this.title);

  final String title;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      textColor: Colors.white,
      child: SizedBox(
        height: 60,
        child: Row(children: <Widget>[
          Text(title),
        ]),
      ),
      onPressed: () {
        Navigator.push<void>(
          context,
          MaterialPageRoute<void>(builder: (context) => LoginPage()),
        );
      },
    );
  }
}