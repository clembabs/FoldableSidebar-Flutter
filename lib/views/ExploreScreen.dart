import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:sidebar/models/games_models.dart';
import 'package:sidebar/utils/styling.dart';

class ExploreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(color: Colors.white, gradient: appGradient),
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          // Image.asset(
          //   logo,
          //   color: Colors.white10,
          //   fit: BoxFit.cover,
          //   scale: 10,
          //   alignment: Alignment.center,
          // ),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            IconButton(
                              icon: Icon(MdiIcons.youtube),
                              color: Colors.white,
                              onPressed: () {},
                            ),
                            SizedBox(width: 10.0),
                            IconButton(
                              icon: Icon(MdiIcons.facebook),
                              color: Colors.white,
                              onPressed: () {},
                            ),
                            SizedBox(width: 10.0),
                            IconButton(
                              icon: Icon(MdiIcons.instagram),
                              color: Colors.white,
                              onPressed: () {},
                            ),
                            SizedBox(width: 10.0),
                            IconButton(
                              icon: Icon(MdiIcons.twitter),
                              color: Colors.white,
                              onPressed: () {},
                            ),
                            SizedBox(width: 10.0),
                            IconButton(
                              icon: Icon(MdiIcons.gmail),
                              color: Colors.white,
                              onPressed: () {},
                            ),
                            SizedBox(width: 10.0),
                          ]),
                    ),
                    ListView.builder(
                      primary: false,
                      shrinkWrap: true,
                      itemCount: gamesAvailable.length,
                      itemBuilder: (context, index) {
                        return Card(
                          margin: const EdgeInsets.symmetric(vertical: 20),
                          elevation: 4,
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8))),
                          child: Padding(
                            padding: EdgeInsets.all(5),
                            child: ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              child: AspectRatio(
                                aspectRatio: 10 / 7,
                                child: Stack(
                                  children: <Widget>[
                                    Image.asset(gamesAvailable[index].image,
                                        width:
                                            MediaQuery.of(context).size.height *
                                                0.55,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.43,
                                        fit: BoxFit.fill),
                                    SizedBox.expand(
                                        child: Container(
                                      decoration: BoxDecoration(
                                          gradient: LinearGradient(colors: [
                                        Colors.black26,
                                        Colors.black26
                                      ])),
                                      child: Padding(
                                        padding: EdgeInsets.all(15),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: <Widget>[
                                            Text(
                                              gamesAvailable[index].name,
                                              style: titleText,
                                            ),
                                            SizedBox(
                                              height: 5.0,
                                            ),
                                            Text(
                                              gamesAvailable[index].message,
                                              style: messageText,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ))
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
