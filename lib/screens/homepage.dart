// ignore_for_file: depend_on_referenced_packages, library_private_types_in_public_api, avoid_print, unused_import

import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:flutter_doctors/screens/loginpage.dart';
import 'package:flutter_doctors/screens/infopage.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static const routename = 'Homepage';

  @override
  Widget build(BuildContext context) {
    print('${HomePage.routename} built');
    return Scaffold(
      appBar: AppBar(
        title: const Text(HomePage.routename),
        actions: [
          IconButton(
            icon: const Icon(Icons.info),
            tooltip: 'Info',
            onPressed: () => _toInfoPage(context), //THIS HAS A BUG
          ),
        ],
      ),
      body: const Center(
          child: Text('login_flow'),
        ),
      
    );
  } //build

  void _toInfoPage(BuildContext context){
    //Then pop the HomePage
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => InfoPage()));
  }//_toInfoPage

} //HomePage