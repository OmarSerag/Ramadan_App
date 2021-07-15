import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ramadan/const/color.dart';
import 'package:ramadan/widgets/custom_bold_text.dart';
import 'package:ramadan/widgets/custom_normal_text.dart';

class DuaaPage extends StatefulWidget {
  @override
  _DuaaPageState createState() => _DuaaPageState();
}

class _DuaaPageState extends State<DuaaPage>
    with SingleTickerProviderStateMixin {
  late TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    List<DuaaModel> model = [
      DuaaModel(
      icon: Icon(Icons.ac_unit),
        title:"Al-Fatihah",
        subtitle: "Makkiyah - 7 Ayah",
      ),
      DuaaModel(
      icon: Icon(Icons.ac_unit),
        title:"Al-Baqarah",
        subtitle: "Maddaniyah - 266 Ayah",
      ),
      DuaaModel(
      icon: Icon(Icons.ac_unit),
        title:"Aali Imran",
        subtitle: "Maddaniyah - 200 Ayah",
      ),
      DuaaModel(
      icon: Icon(Icons.ac_unit),
        title:"An-Nisa",
        subtitle: "Maddaniyah - 176 Ayah",
      ),
      DuaaModel(
      icon: Icon(Icons.ac_unit),
        title:"Al-Ma`idah",
        subtitle: "Maddaniyah - 120 Ayah",
      ),
      DuaaModel(
      icon: Icon(Icons.ac_unit),
        title:"Al-An`am",
        subtitle: "Makkiyah - 165 Ayah",
      ),
      DuaaModel(
      icon: Icon(Icons.ac_unit),
        title:"Al-A`raf",
        subtitle: "Makkiyah - 206 Ayah",
      ),
      DuaaModel(
      icon: Icon(Icons.ac_unit),
        title:"Al-Anfal",
        subtitle: "Maddaniyah - 75 Ayah",
      ),

    ];

    return Scaffold(
      body: SizedBox.expand(
        child: Container(
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Image.asset(
                "images/Group-2.png",
                fit: BoxFit.cover,
                height: MediaQuery.of(context).size.height,
              ),
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 1.4,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                ),
                child: ListView(
                  padding: EdgeInsets.all(20),
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blueGrey[100],
                      ),
                      child: new TabBar(
                        indicatorColor: Colors.blueGrey[500],
                        indicatorSize: TabBarIndicatorSize.label,
                        controller: _controller,
                        tabs: [
                          new Tab(
                            text: 'ٍSurrah',
                          ),
                          new Tab(
                            text: 'Juz',
                          ),
                          new Tab(
                            text: 'Bookmarks',
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height / 1.4,
                      color: Colors.white,
                      child: ListView.separated(
                        shrinkWrap: true,
                        itemBuilder: (context, index) =>
                            BuildDuaaList(model[index]),
                        separatorBuilder: (context, index) => SizedBox(
                          height: 10,
                        ),
                        itemCount: model.length,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget BuildDuaaList(DuaaModel duaaModel) => Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          CircleAvatar(
            radius: 15,
            child: duaaModel.icon,
          ),
          SizedBox(width: 10,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${duaaModel.title}",
                style: TextStyle(color: Colors.blueGrey[400], fontSize: 20),
              ),
              Text(
                "${duaaModel.subtitle}",
                style: TextStyle(color: Colors.blueGrey, fontSize: 15),
              ),
            ],
          ),
        ],
      ),
    );

class DuaaModel {
  final Icon icon;
  final String title;
  final String subtitle;

  DuaaModel({required this.icon, required this.subtitle, required this.title});
}
