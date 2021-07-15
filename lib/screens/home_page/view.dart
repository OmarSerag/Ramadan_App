import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ramadan/const/color.dart';
import 'package:ramadan/const/color.dart';
import 'package:ramadan/const/color.dart';
import 'package:ramadan/screens/duaa_page/view.dart';
import 'package:ramadan/widgets/custom_bold_text.dart';
import 'package:ramadan/widgets/custom_normal_text.dart';

class HomePage extends StatelessWidget {
  List MyModel = [
    Container(
      padding: EdgeInsets.all(10.0),
      clipBehavior: Clip.none,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30), color: Colors.indigo[50]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Sahar Time",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Text(
                "4:08",
                style: TextStyle(fontSize: 20),
              ),
              Text("am"),
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
          Text(
            "Next Player",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          SizedBox(height: 10),
          Text(
            "Duhur",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Text(
                "4:08",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              Text(
                "am",
                style: TextStyle(color: Colors.white),
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
          Text(
            "Player Time",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          SizedBox(height: 10),
          Text(
            "Asr",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            children: [
              Text(
                "3:49",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              Text(
                "pm",
                style: TextStyle(color: Colors.white, fontSize: 20),
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
          Text(
            "Breakfast",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          SizedBox(height: 10),
          Text(
            "Maghrib",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            children: [
              Text(
                "3:49",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              Text(
                "pm",
                style: TextStyle(
                  color: Colors.white,
                ),
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
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Container(
              child: ListTile(
                title: CustomBoldText(
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
                  Text(
                    "Maghrib",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "6:42",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "PM",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.location_on,
                        size: 15,
                        color: Colors.white,
                      ),
                      Text(
                        "Al Ain, United Arab Emirates",
                        style: TextStyle(color: Colors.white, fontSize: 15),
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
                padding: EdgeInsets.all(10),
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
                    Text(
                      "Daily Duaa",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      "i ask forgiveness from Allah,my Lord,from every sin i committed",
                      maxLines: 2,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
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
                        Image.asset(
                          "images/Group-1.png",
                          width: 70,
                          height: 50,
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
