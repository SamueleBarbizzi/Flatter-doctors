import 'dart:ffi';

import 'package:flutter/material.dart';
//import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:flutter_doctors/screens/mainnavigator.dart';
import 'package:flutter_doctors/models/mealchoice.dart';
import 'package:flutter_doctors/models/personalmeals.dart';
import 'package:flutter_doctors/models/groups.dart';
import 'package:provider/provider.dart';


class VisualEditRecipe extends StatefulWidget {
  const VisualEditRecipe({Key? key}) : super(key: key);
  //final Map recipe;
  //final String dish;

  static const routename = 'visualEditRecipePage';

  @override
  _VisualEditRecipeState createState() => _VisualEditRecipeState();
}

class _VisualEditRecipeState extends State<VisualEditRecipe> {

  @override
  Widget build(BuildContext context) {
    print('${VisualEditRecipe.routename} built');
  Map chosen= Provider.of<MealChoiche>(context, listen: false).chosen; 
  List lista = chosen['LUNCH'].values.toList();
  List<bool> valori = [];
  List complex = [];
  for( int i=0; i< 4; i++) {valori.add(lista[i].isNotEmpty); complex.add(lista[i]);};
  int lungh = valori.where((x) => x == true).length;
  List all_list= complex.expand((x) => x).toList(); 
  int lunlist=all_list.length;
  
    return Scaffold(
      appBar: AppBar(
        title: Row(children: [
          const Text(VisualEditRecipe.routename, 
          style: const TextStyle(fontWeight: FontWeight.bold))]),
        centerTitle: true,
        leading: BackButton(
          onPressed: (){} //=> Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const MainNavigator())),
        ),),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              'Headline',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(
              height: 200,
              child: ListView.builder(
                physics: ClampingScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: lunlist,
                itemBuilder: (BuildContext ctx, index) => Card ( 
                  key: ValueKey(all_list[index]['name']),
                  child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.grey.shade400, width: 1.0),
                        borderRadius: BorderRadius.circular(8)
                      ), 
                      child: ClipRRect(borderRadius: BorderRadius.circular(10),
                        child: Image.network(all_list[index]['url']),
                      )
                    ),),
              ),
            ),
            Text(
              'Headline 2',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(
              height: 200.0,
              child: ListView.builder(
                physics: ClampingScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 15,
                itemBuilder: (BuildContext context, int index) => Card(
                      child: Center(child: Text('Dummy Card Text')),
                    ),
              ),
            ),
            Text(
              'Headline 3',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(
              height: 200.0,
              child: ListView.builder(
                physics: ClampingScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 15,
                itemBuilder: (BuildContext context, int index) => Card(
                      child: Center(child: Text('Dummy Card Text')),
                    ),
              ),
            ),
            Text(
              'Headline 4',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(
              height: 200.0,
              child: ListView.builder(
                physics: ClampingScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 15,
                itemBuilder: (BuildContext context, int index) => Card(
                      child: Center(child: Text('Dummy Card Text')),
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



