import 'package:flutter/material.dart';
import 'package:zendesk_clone/UI/Resources/Constants.dart';
import 'package:zendesk_clone/UI/Resources/SharedMethods.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class CreateAppointmentPage extends StatefulWidget {
  CreateAppointmentPage({Key key}) : super(key: key);

  _CreateAppointmentPageState createState() => _CreateAppointmentPageState();
}

class _CreateAppointmentPageState extends State<CreateAppointmentPage> {
  bool switchValue = false;

  String dropdownValue = 'No Alert';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
        bottom: false,
        child: Column(
          children: <Widget>[
            _buildTitleWidget(context),
            _buildDateTimeWidget(context),
            _buildAlertLocationWidgets(),
            Expanded(
              child: Container(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildAlertLocationWidgets() {
    return Container(
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(20),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.account_circle,
                        color: Colors.grey,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          'Ketan',
                          style: kBoldTextStyle,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.watch_later,
                        color: Colors.grey,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: DropdownButton<String>(
                          value: dropdownValue,
                          onChanged: (String newValue) {
                            setState(() {
                              dropdownValue = newValue;
                            });
                          },
                          items: <String>[
                            'No Alert',
                            'At Time of Event',
                            '5 Minutes',
                            '15 Minutes',
                            '30 Minutes',
                            '1 Hour',
                            '1 Day',
                            '1 Week'
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.all(20),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.location_on,
                          color: Colors.grey,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Text(
                            'Location',
                            style: kBoldTextStyle.copyWith(
                                fontWeight: FontWeight.w400),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Divider(
                  color: Colors.black26,
                ),
              ],
            ),
          );
  }

  Widget _buildDateTimeWidget(BuildContext context) {
    return Container(
      // height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          getDay(),
                          style: kLighTextStyle,
                        ),
                        Text(
                          getTime(),
                          style: kLighTextStyle.copyWith(
                              fontSize: 15, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  child: Center(
                    child: Column(
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          getDay(),
                          style: kLighTextStyle,
                        ),
                        Text(
                          getTime(),
                          style: kLighTextStyle.copyWith(
                              fontSize: 15, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Divider(
            color: Colors.black26,
          ),
          Container(
            padding: EdgeInsets.only(left: 15, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'All day',
                  style: kLighTextStyle.copyWith(
                      fontSize: 15, fontWeight: FontWeight.w400),
                ),
                Switch(
                  onChanged: (val) {
                    setState(() {
                      switchValue = val;
                    });
                  },
                  value: switchValue,
                )
              ],
            ),
          ),
          Divider(
            color: Colors.black26,
          ),
          InkWell(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              child: Text(
                'PREVIEW YOUR CALENDER',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: Theme.of(context).accentColor),
              ),
            ),
          ),
          Divider(
            color: Colors.black26,
          ),
        ],
      ),
    );
  }

  Widget _buildTitleWidget(BuildContext context) {
    return Container(
      // color: Theme.of(context).primaryColor,
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.close,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                alignment: Alignment.center,
              ),
              IconButton(
                icon: Icon(
                  Icons.check,
                  color: Colors.white,
                ),
                onPressed: () {},
                alignment: Alignment.center,
              )
            ],
          ),
          Container(
            // color: Colors.red,
            padding: EdgeInsets.only(left: 50, right: 50, top: 10, bottom: 20),
            height: 100,
            child: TextField(
              autocorrect: true,
              autofocus: true,
              cursorColor: Colors.white,
              style: TextStyle(
                color: Colors.white,
              ),
              decoration: kTextFieldDecorationPrimary.copyWith(
                labelText: 'Title',
                hintText: 'Untitled Appointment',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
