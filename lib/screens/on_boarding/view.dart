import 'package:flutter/material.dart';
import 'package:ramadan/const/color.dart';
import 'package:ramadan/screens/home_page/view.dart';
import 'package:ramadan/widgets/custom_bold_text.dart';
import 'package:ramadan/widgets/custom_normal_text.dart';

class OnBoarding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                height: MediaQuery.of(context).size.height / 3,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    )),
                child: ListView(
                  physics: NeverScrollableScrollPhysics(),
                  // controller: scrollController,
                  children: [
                    Center(
                      child: CustomBoldText(
                        text: 'Ramadan Kareem',
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: CustomNormalText(
                        text:
                            'When the month of Ramadan starts, the gates of heaven are opened and the gates of hell are closed ',
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => HomePage(),
                              ),
                            );
                          },
                          child: Container(
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                                color: kAccentColor,
                                borderRadius: BorderRadius.circular(20)),
                            child: Text(
                              "Let’s get started",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 40,
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
