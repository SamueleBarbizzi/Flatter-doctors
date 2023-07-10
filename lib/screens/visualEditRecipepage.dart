import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:flutter_doctors/screens/mainnavigator.dart';


class visualEditRecipePage extends StatelessWidget {
  const visualEditRecipePage({Key? key}) : super(key: key);

  static const routename = 'visualEditRecipepage';

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    print('${visualEditRecipePage.routename} built');
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
            onPressed: () => Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const MainNavigator())),
          ),
        title: Text(visualEditRecipePage.routename), centerTitle: true),
      body: Text(''),
    );
  }
}






















