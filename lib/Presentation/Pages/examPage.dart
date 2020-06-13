
import 'package:flutter/material.dart';

import 'customNavbar/customNavbar.dart';
import 'mainpagearea/mainPageArea.dart';
import 'sidebar/SideBar.dart';

class ExamPage extends StatelessWidget {
  const ExamPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
      child: AnimatedPadding(
        duration: Duration(seconds:1),
        padding: EdgeInsets.only(bottom : MediaQuery.of(context).size.height * 0.01),
        child: Column(
          children: <Widget>[
            AnimatedPadding(
                duration: Duration(seconds:1),
                padding: const EdgeInsets.all(1),
                child: CustomNavbar(),
              ),
             AnimatedPadding(
                duration: Duration(seconds:1),
                padding: const EdgeInsets.all(1),
                child: Row(
                    children: <Widget>[
                      Flexible(
                        flex: 3,
                        child: MainPageArea(),
                      ),
                      Flexible(
                        flex: 1,
                        child: SideBar(),
                      ),
                        //Placeholder(fallbackHeight: height,)),
                     
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