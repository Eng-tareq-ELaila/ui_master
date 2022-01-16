import 'package:flutter/material.dart';
import 'package:ui_master/models/authorsModel.dart';
import 'package:ui_master/models/expandWid.dart';

class DetailsSccreen extends StatelessWidget {
  AuthorsModel authorsModel;
  ExpandWidget expandWidget;

  DetailsSccreen(this.expandWidget, this.authorsModel);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Image.network(
          expandWidget.imageUrl,
          width: double.infinity,
          fit: BoxFit.cover,
          height: 300,
        ),
        Padding(
            padding: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  expandWidget.superName,
                  style: TextStyle(fontSize: 13),
                ),
                // IconButton(
                //     onPressed: () {},
                //     icon: Icon(
                //       Icons.play_circle_filled,
                //       color: Colors.deepOrangeAccent,
                //     ))
              ],
            )),
        Padding(
            padding: EdgeInsets.all(10),
            child: Text('Pla PlaPla Pla Pla', style: TextStyle(fontSize: 10))),
        Padding(
          padding: EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(authorsModel.imageUrl),
                radius: 20,
              ),
              SizedBox(width: 10),
              Column(
                children: [
                  Text(
                    authorsModel.userName,
                    style: TextStyle(fontSize: 10),
                  ),
                  Text('${authorsModel.noOfFollowers}+k Followers',
                      style: TextStyle(fontSize: 10))
                ],
              )
            ],
          ),
        ),
        SizedBox(height: 50),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(children: [
              CircleAvatar(
                radius: 32,
                child: Icon(Icons.star_rate_rounded),
                backgroundColor: Colors.white,
              ),
              SizedBox(height: 10),
              Text('Popular',
                  style: TextStyle(color: Colors.white, fontSize: 10)),
            ]),
            //    SizedBox(width: 15),
            Column(children: [
              CircleAvatar(
                radius: 32,
                child: Icon(Icons.star_rate_rounded),
                backgroundColor: Colors.white,
              ),
              SizedBox(height: 10),
              Text('Trending',
                  style: TextStyle(color: Colors.white, fontSize: 10)),
            ]),
            //   SizedBox(width: 15),
            Column(children: [
              CircleAvatar(
                radius: 32,
                child: Icon(Icons.star_rate_rounded),
                backgroundColor: Colors.white,
              ),
              SizedBox(height: 10),
              Text(
                'Recent',
                style: TextStyle(color: Colors.white, fontSize: 10),
              ),
            ]),
            //   SizedBox(width: 15),
            Column(children: [
              CircleAvatar(
                radius: 32,
                child: Icon(Icons.star_rate_rounded),
                backgroundColor: Colors.white,
              ),
              SizedBox(height: 10),
              Text('Mogic',
                  style: TextStyle(color: Colors.white, fontSize: 10)),
            ]),
            //    SizedBox(width: 15),
          ],
        )
      ],
    ));
  }
}
