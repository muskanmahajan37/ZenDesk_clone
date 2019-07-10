import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:zendesk_clone/UI/Pages/TabPages/ActivityPage.dart';
import 'package:zendesk_clone/UI/Pages/TabPages/OverviewPage.dart';

class TodayPage extends StatefulWidget {
  TodayPage({Key key}) : super(key: key);

  _TodayPageState createState() => _TodayPageState();
}

class _TodayPageState extends State<TodayPage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, initialIndex: 0, length: 2);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Today',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        // automaticallyImplyLeading: true,
        leading: Icon(FontAwesome.simplybuilt),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              _bottomSheet(context);
            },
          ),
          IconButton(
            icon: Icon(Icons.notifications_none),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
        elevation: 10,
        bottom: TabBar(
          controller: _tabController,
          indicatorWeight: 2,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            Container(
              height: 30,
              child: Center(
                child: Text(
                  'OVERVIEW',
                ),
              ),
            ),
            Container(
              height: 30,
              child: Center(
                child: Text(
                  'ACTIVITY',
                ),
              ),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          OverviewPage(),
          ActivityPage(),
        ],
      ),
    );
  }

  _bottomSheet(context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext bc) {
        return Container(
          height: 320,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  _bottomSheetElements(
                    context,
                    icon: Feather.calendar,
                    text: 'Appointment',
                    onTap: () {},
                  ),
                  _bottomSheetElements(
                    context,
                    icon: Feather.check_square,
                    text: 'Task',
                    onTap: () {},
                  ),
                  _bottomSheetElements(
                    context,
                    icon: Icons.wifi_tethering,
                    text: 'Lead',
                    onTap: () {},
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  _bottomSheetElements(
                    context,
                    icon: Icons.account_circle,
                    text: 'Contact: Person',
                    onTap: () {},
                  ),
                  _bottomSheetElements(
                    context,
                    icon: FontAwesome.building,
                    text: 'Contact: Company',
                    onTap: () {},
                  ),
                  _bottomSheetElements(
                    context,
                    icon: MaterialCommunityIcons.coin,
                    text: 'Deal',
                    onTap: () {},
                  ),
                ],
              ),
              _bottomSheetElements(
                context,
                icon: MaterialCommunityIcons.message_outline,
                text: 'Text Message',
                onTap: () {},
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _bottomSheetElements(context,
      {IconData icon, String text, Function onTap}) {
    return Expanded(
      // onTap: onTap,
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: <Widget>[
              Container(
                height: 55,
                width: 55,
                decoration: new BoxDecoration(
                  color: Colors.grey,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  icon,
                  color: Colors.white,
                  size: IconTheme.of(context).size + 5,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                text,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
