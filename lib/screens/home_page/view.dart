import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ramadan/const/color.dart';
import 'package:ramadan/screens/duaa_page/view.dart';
import 'package:ramadan/widgets/custom_bold_text.dart';
import 'package:ramadan/widgets/custom_dark_text.dart';
import 'package:ramadan/widgets/custom_text.dart';

class HomePage extends StatelessWidget {
  List MyModel = [
    Container(
      padding: EdgeInsets.all(20.0),
      clipBehavior: Clip.none,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.blueGrey[200],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          defaultText(
            text: "Sahar Time",
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              defaultText(
                text: "4:08",
              ),
              defaultText(
                text: "am",
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset(
                "images/Path 5038.png",
                width: 40,
                height: 40,
                color: Colors.deepPurpleAccent[200],
              ),
            ],
          )
        ],
      ),
    ),
    Container(
      padding: EdgeInsets.all(10.0),
      clipBehavior: Clip.none,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30), color: Colors.blueGrey[600]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          defaultText(
            text: "Next Player",
          ),
          SizedBox(height: 10),
          defaultText(
            text: "Duhur",
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              defaultText(
                text: "4:08",
              ),
              defaultText(
                text: "am",
              ),
              SizedBox(width: 40),
              Expanded(
                child: Image.asset(
                  "images/Path 5038.png",
                  width: 40,
                  height: 40,
                  color: Colors.yellowAccent[600],
                ),
              ),
            ],
          ),
        ],
      ),
    ),
    Container(
      padding: EdgeInsets.all(10.0),
      clipBehavior: Clip.none,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: kAccentColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          defaultText(
            text: "Player Time",
          ),
          SizedBox(
            height: 10,
          ),
          defaultText(
            text: "Asr",
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            children: [
              defaultText(
                text: "3:49",
              ),
              defaultText(
                text: "pm",
              ),
            ],
          ),
        ],
      ),
    ),
    Container(
      padding: EdgeInsets.all(10.0),
      clipBehavior: Clip.none,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30), color: Colors.blueGrey[300]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          defaultText(
            text: "Breakfast",
          ),
          SizedBox(
            height: 10,
          ),
          defaultText(
            text: "Maghrib",
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            children: [
              defaultText(
                text: "3:49",
              ),
              defaultText(
                text: "pm",
              ),
            ],
          ),
        ],
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(35.0),
        child: Column(
          children: [
            Container(
              child: ListTile(
                title: defaultDarkText(
                  text: "Saturday, Apr 24",
                ),
                subtitle: Text(
                  "Ramadan 12, 1442 AH",
                  style: TextStyle(color: kAccentColor),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.sort),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.blueGrey,
              ),
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  defaultText(
                    text: "Maghrib",
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      defaultText(
                        text: "6:42",
                      ),
                      defaultText(
                        text: "PM",
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.location_on,
                        size: 15,
                        color: Colors.white,
                      ),
                      defaultText(
                        text: "Al Ain, United Arab Emirates",
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              alignment: Alignment.bottomLeft,
              child: Text(
                "Prayer times",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Container(
              child: GridView.count(
                physics: NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
                shrinkWrap: true,
                children: List.generate(
                  MyModel.length,
                  (index) {
                    return Container(child: MyModel[index]);
                  },
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(10.0),
                height: MediaQuery.of(context).size.height / 8,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.cyan[50],
                ),
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    defaultDarkText(
                      text: "Daily Duaa",
                    ),
                    defaultDarkText(
                      text:
                          "i ask forgiveness from Allah, my"
                    ),
                    defaultDarkText(
                        text:
                        "Lord, from every sin i committed"
                    ),

                    Row(
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => DuaaPage(),
                              ),
                            );
                          },
                          child: Text(
                            "Second Ashra",
                            style: TextStyle(color: Colors.orange),
                          ),
                        ),
                        SizedBox(width: 80,),
                        Image.asset(
                          "images/Group-1.png",
                          width: MediaQuery.of(context).size.width/4
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
