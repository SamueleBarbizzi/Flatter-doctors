/* import 'package:flutter/material.dart';
import 'package:flutter_doctors/models/cookbook.dart';
import 'package:flutter_doctors/models/groups.dart';


class MyListView extends StatelessWidget {
  final List<MySection> sections;

  MyListView({required this.sections});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: sections.length,
      itemBuilder: (BuildContext context, int sectionIndex) {
        MySection section = sections[sectionIndex];
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(section.title),
            ),
            Container(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: section.images.length,
                itemBuilder: (BuildContext context, int imageIndex) {
                  return Image.network(section.images[imageIndex]);
                },
              ),
            ),
          ],
        );
      },
    );
  }
} */