import 'package:flutter/material.dart';
import 'package:sidebar/utils/image_asset.dart';
import 'package:sidebar/utils/styling.dart';
import 'package:sidebar/views/Players.dart';

import 'Profile.dart';

class CustomDrawer extends StatelessWidget {
  final Function closeDrawer;

  const CustomDrawer({Key key, this.closeDrawer}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    return Container(
      color: Colors.white,
      width: mediaQuery.size.width * 0.60,
      height: mediaQuery.size.height,
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 200,
            color: Colors.grey.withAlpha(20),
            child: Column(
              children: <Widget>[
                new Container(
                    width: 140.0,
                    height: 140.0,
                    decoration: new BoxDecoration(
                      shape: BoxShape.circle,
                      image: new DecorationImage(
                        image: new ExactAssetImage(player1),
                        fit: BoxFit.cover,
                      ),
                    )),
                SizedBox(height: 10),
                RichText(
                  text: TextSpan(children: [
                    TextSpan(
                      text: 'Clembabs',
                      style: punchTextStyle,
                    ),
                    TextSpan(
                      text: '  Studio',
                      style: punchLine2TextStyle,
                    ),
                  ]),
                )
              ],
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Players()));
              closeDrawer();
            },
            leading: Icon(Icons.people),
            title: Text('Players',style: customTextStyle,),
          ),
          Divider(
            height: 1,
            color: Colors.grey,
          ),
          ListTile(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Profile()));
              closeDrawer();
            },
            leading: Icon(Icons.person),
            title: Text('Your Profile',style: customTextStyle,),
          ),
          Divider(
            height: 1,
            color: Colors.grey,
          ),
          ListTile(
            onTap: () {
              closeDrawer();
            },
            leading: Icon(Icons.settings),
            title: Text('Settings',style: customTextStyle,),
          ),
          Divider(
            height: 1,
            color: Colors.grey,
          ),
          ListTile(
            onTap: () {
              closeDrawer();
            },
            leading: Icon(Icons.info),
            title: Text('Info',style: customTextStyle,),
          ),
          Divider(
            height: 1,
            color: Colors.grey,
          ),
          ListTile(
            onTap: () {
              closeDrawer();
            },
            leading: Icon(Icons.exit_to_app),
            title: Text('Logout',style: customTextStyle,),
          ),
          Divider(
            height: 1,
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}
