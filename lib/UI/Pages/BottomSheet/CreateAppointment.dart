import 'package:flutter/material.dart';
import 'package:zendesk_clone/UI/Resources/Constants.dart';
import 'package:zendesk_clone/UI/Resources/SharedMethods.dart';

class CreateAppointmentPage extends StatefulWidget {
  CreateAppointmentPage({Key key}) : super(key: key);

  _CreateAppointmentPageState createState() => _CreateAppointmentPageState();
}

class _CreateAppointmentPageState extends State<CreateAppointmentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
        bottom: false,
        child: Column(
          children: <Widget>[
            Container(
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
                    padding: EdgeInsets.only(
                        left: 50, right: 50, top: 10, bottom: 20),
                    height: 100,
                    child: TextField(
                      autocorrect: true,
                      autofocus: true,
                      cursorColor: Colors.white,
                      decoration: kTextFieldDecoration.copyWith(
                        labelText: 'Title',
                        hintText: 'Untitled Appointment',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 60,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Row(
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
            ),
            Expanded(
              child: Container(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
