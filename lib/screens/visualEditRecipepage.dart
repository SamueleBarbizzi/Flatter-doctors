import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:flutter_doctors/screens/mainnavigator.dart';


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
    return Scaffold(
      appBar: AppBar(
        title: Row(children: [
          const Text(VisualEditRecipe.routename, 
          style: const TextStyle(fontWeight: FontWeight.bold))]),
        centerTitle: true,
        leading: BackButton(
          onPressed: () => Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const MainNavigator())),
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
                itemCount: 4,
                itemBuilder: (BuildContext context, int index) => Card (child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.grey.shade400, width: 1.0),
                        borderRadius: BorderRadius.circular(8)
                      ), 
                      child: ClipRRect(borderRadius: BorderRadius.circular(10),
                        child: Image.network('https://www.giallozafferano.it/images/221-22163/Spaghetti-al-pomodoro_650x433_wm.jpg')
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






















