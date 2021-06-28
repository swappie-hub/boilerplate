
import 'package:boilerplate/utils/color.dart';
import 'package:boilerplate/utils/themes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class PlaygroundView extends StatefulWidget {
  @override
  _PlaygroundViewState createState() => _PlaygroundViewState();
}

class _PlaygroundViewState extends State<PlaygroundView> {
  PanelController _slidingPanelController = new PanelController();
  @override
  void initState() {
    // _slidingPanelController.
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        elevation: 0,
        title: Text(
          "Search Country",
          style: TextStyle(
              color: kWhite,
              fontSize: appTheme.textTheme.bodyText1.fontSize,
              fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              alignment: Alignment.center,
              height: 76,
              width: 76,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xFFFAAE0B),
              ),
              child: InkWell(
                onTap: () {},
                child: Text(
                  "Bookmarks",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      color: appTheme.textTheme.button.color),
                ),
              ),
            ),
          ),
        ],
      ),
      body: SlidingUpPanel(
        body: Container(
          color: kPrimaryColor,
        ),
        controller: _slidingPanelController,
        minHeight: MediaQuery.of(context).size.height - 80,
        maxHeight: MediaQuery.of(context).size.height,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12), topRight: Radius.circular(12)),
        boxShadow: [
          BoxShadow(
            blurRadius: 0.0,
            color: Color.fromRGBO(0, 0, 0, 0.0),
          )
        ],
        panel: Container(
         ),
      ),
    );
  }
  }

