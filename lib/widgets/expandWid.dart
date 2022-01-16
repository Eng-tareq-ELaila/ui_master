import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:ui_master/models/expandWid.dart';

class ExpandWid extends StatelessWidget {
  ExpandWidget expandWidget;

  ExpandWid(this.expandWidget);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.all(15),
          child: Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                  image: NetworkImage(expandWidget.imageUrl),
                  fit: BoxFit.cover),
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              expandWidget.superName,
              style: TextStyle(fontSize: 25),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              expandWidget.name,
              style: TextStyle(fontSize: 15, color: Colors.grey),
            ),
          ],
        )
      ],
    );
  }
}
