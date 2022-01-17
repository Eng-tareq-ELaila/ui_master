import 'dart:ui';

import 'package:easy_localization/easy_localization.dart';
import 'package:expandable_bottom_sheet/expandable_bottom_sheet.dart';
import 'package:flutter/material.dart';

import 'package:ui_master/screens/detailScreen.dart';
import 'package:ui_master/widgets/Authors.dart';
import 'package:ui_master/widgets/expandWid.dart';
import 'Data.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
        supportedLocales: [Locale('en'), Locale('ar')],
        path: "assets/lang", // <-- change the path of the translation files
        fallbackLocale: Locale('en'),
        child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: ExpandableBottomSheet(
        background: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: NetworkImage(
                "https://i.pinimg.com/originals/a8/a9/7c/a8a97c3efe031d2b696000622256dfe8.jpg"),
            fit: BoxFit.cover,
          )),
          child: Padding(
            padding: const EdgeInsets.only(top: 80.0, left: 15, right: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Brows".tr(),
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "podcast".tr(),
                  style: TextStyle(color: Colors.white70, fontSize: 17),
                ),
                SizedBox(height: 35),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Keyword'.tr(),
                    hintStyle: TextStyle(color: Colors.white70),
                    fillColor: Colors.blueGrey.withOpacity(0.6),
                    filled: true,
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 30, vertical: 17),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                    ),
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
                      Text('Popul'.tr(), style: TextStyle(color: Colors.white)),
                    ]),
                    //    SizedBox(width: 15),
                    Column(children: [
                      CircleAvatar(
                        radius: 32,
                        child: Icon(Icons.trending_up_outlined),
                        backgroundColor: Colors.white,
                      ),
                      SizedBox(height: 10),
                      Text('Trend'.tr(), style: TextStyle(color: Colors.white)),
                    ]),
                    //   SizedBox(width: 15),
                    Column(children: [
                      CircleAvatar(
                        radius: 32,
                        child: Icon(Icons.last_page_sharp),
                        backgroundColor: Colors.white,
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Rec'.tr(),
                        style: TextStyle(color: Colors.white),
                      ),
                    ]),
                    //   SizedBox(width: 15),
                    Column(children: [
                      CircleAvatar(
                        radius: 32,
                        child: Icon(Icons.stars_outlined),
                        backgroundColor: Colors.white,
                      ),
                      SizedBox(height: 10),
                      Text('Mogi'.tr(), style: TextStyle(color: Colors.white)),
                    ]),
                    //    SizedBox(width: 15),
                  ],
                )
              ],
            ),
          ),
        ),
        persistentContentHeight: 10,
        // animationCurveExpand: Curves.bounceOut,
        // animationCurveContract: Curves.ease,
        // animationDurationExtend: Duration(milliseconds: 500),
        // animationDurationContract: Duration(milliseconds: 250),
        persistentHeader: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            color: Colors.white,
          ),

          // constraints: BoxConstraints.expand(height: 60),
          child: Center(
            child: Container(
              child: Padding(
                padding: EdgeInsets.only(top: 30),
                child: Column(children: [
                  Text(
                    'Handpic'.tr(),
                    style: TextStyle(fontSize: 30),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    color: Colors.orangeAccent,
                    width: 25,
                    height: 4,
                  )
                ]),
              ),
            ),
          ),
        ),
        expandableContent: Container(
          constraints: BoxConstraints(
            maxHeight: 400,
            minHeight: 20,
          ),
          child: Container(
            color: Colors.white,
            child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <ExpandWid>[
                        for (int i = 0; i < list.length; i++)
                          ExpandWid(list[i]),
                      ],
                    ),
                    SizedBox(height: 25),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child:
                          Text('Auther'.tr(), style: TextStyle(fontSize: 20)),
                    ),
                    SizedBox(height: 25),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Authors>[
                          for (int i = 0; i < listAuthers.length; i++)
                            Authors(listAuthers[i]),
                        ],
                      ),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (ctx) {
                            return DetailsSccreen(list[0], listAuthers[0]);
                          }));
                        },
                        child: Text('Screen'.tr()))
                  ]),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (context.locale == Locale("en")) {
            context.setLocale(Locale("ar"));
          } else {
            context.setLocale(Locale("en"));
          }
        },
        child: Icon(Icons.language),
      ),
    );
  }
}
