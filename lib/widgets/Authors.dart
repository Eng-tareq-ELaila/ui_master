import 'package:flutter/material.dart';
import 'package:ui_master/models/authorsModel.dart';

class Authors extends StatelessWidget {
  AuthorsModel authorsModel;
  Authors(this.authorsModel);
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      CircleAvatar(
        backgroundImage: NetworkImage(authorsModel.imageUrl),
        radius: 40,
      ),
      SizedBox(height: 10),
      Text(authorsModel.userName)
    ]);
  }
}
