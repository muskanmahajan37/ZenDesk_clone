import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:zendesk_clone/UI/Resources/Constants.dart';
import 'package:zendesk_clone/UI/Resources/SharedMethods.dart';

class OverviewPage extends StatefulWidget {
  const OverviewPage({Key key}) : super(key: key);

  @override
  _OverviewPageState createState() => _OverviewPageState();
}

class _OverviewPageState extends State<OverviewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            // height: 50,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Good Afternoon, Ketan',
                    style: kBoldTextStyle,
                  ),
                  Text(
                    getDate(),
                    style: kLighTextStyle,
                  )
                ],
              ),
            ),
          ),
          Card(
            elevation: 3,
            child: Container(
              height: 200,
              color: Colors.black12,
            ),
          ),
          Card(
            elevation: 2,
            child: Column(
              children: <Widget>[
                buildColumnButtons(
                  icon: Feather.check_square,
                  text: 'Task',
                  onTap: () {},
                ),
                buildColumnButtons(
                  icon: Feather.calendar,
                  text: 'Calender',
                  onTap: () {},
                ),
                buildColumnButtons(
                  icon: MaterialCommunityIcons.message_outline,
                  text: 'Communication',
                  onTap: () {},
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget buildColumnButtons({IconData icon, String text, Function onTap}) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(18),
        child: Row(
          children: <Widget>[
            Icon(
              icon,
              color: Theme.of(context).primaryColor,
            ),
            Container(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                text,
              ),
            )
          ],
        ),
      ),
    );
  }
}
