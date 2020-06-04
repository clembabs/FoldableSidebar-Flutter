import 'package:flutter/material.dart';
import 'package:foldable_sidebar/foldable_sidebar.dart';
import 'package:sidebar/views/CustomDrawer.dart';
import 'package:swipedetector/swipedetector.dart';
import 'ExploreScreen.dart';

class Landing extends StatefulWidget {
  @override
  _LandingState createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  FSBStatus status;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SwipeDetector(
            onSwipeRight: () {
              setState(() {
                status = FSBStatus.FSB_OPEN;
              });
            },
            onSwipeLeft: () {
              setState(() {
                status = FSBStatus.FSB_CLOSE;
              });
            },
            child: FoldableSidebarBuilder(
              drawerBackgroundColor: Colors.orange,
              status: status,
              drawer: CustomDrawer(
                closeDrawer: () {
                  setState(() {
                    status = FSBStatus.FSB_CLOSE;
                  });
                },
              ),
              screenContents: ExploreScreen(),
            ),
          ),
          floatingActionButton: FloatingActionButton(
              onPressed: () {
                setState(() {
                  status = status == FSBStatus.FSB_OPEN
                      ? FSBStatus.FSB_CLOSE
                      : FSBStatus.FSB_OPEN;
                });
              },
              backgroundColor: Colors.white,
              child: Icon(Icons.menu, color: Colors.black))),
    );
  }
}
