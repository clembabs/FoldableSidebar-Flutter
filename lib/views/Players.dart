import 'package:flutter/material.dart';
import 'package:sidebar/models/friends.dart';
import 'package:sidebar/utils/styling.dart';

class Players extends StatelessWidget {
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
            padding: const EdgeInsets.all(16),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(text:'Great', style: punchLine1TextStyle,),
                  TextSpan(text: '  Players', style: punchLine2TextStyle,),
                ]
              ),
            ),
          ),
                    ListView.builder(
                      primary: false,
                      shrinkWrap: true,
                      itemCount: friends.length,
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
                                    Image.asset(friends[index].image,
                                        width: MediaQuery.of(context).size.height*0.55,
                                        height: MediaQuery.of(context).size.height * 0.43,
                                        fit: BoxFit.fill),
                                    SizedBox.expand(
                                        child: Container(
                                      // decoration: BoxDecoration(
                                      //     gradient: LinearGradient(
                                      //         colors: [Colors.black26, Colors.black26])),
                                      child: Padding(
                                        padding: EdgeInsets.all(15),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: <Widget>[
                                            
                                            SizedBox(
                                              height: 5.0,
                                            ),
                                            Text(
                                              friends[index].name,
                                              style: titleText,
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
