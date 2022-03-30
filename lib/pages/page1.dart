import 'dart:math';

import 'package:flutter/material.dart';
import 'package:zoom_clone/jitsi_sdk/jitsi_meet.dart';
import 'package:zoom_clone/utils/bluebuttons.dart';
import 'package:zoom_clone/utils/constant.dart';
//import 'package:zoom_clone/utils/custombottomnavbar.dart';
import 'package:zoom_clone/utils/orangebutton.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  _createNewMeeting() {
    Random _randomId = Random();
    String meetingId = _randomId.nextInt((10000000) + 10000000).toString();
    ZoomMeet _zoom = ZoomMeet();
    _zoom.createMeeting(
        roomName: meetingId, isAudioMuted: true, isVideoMuted: true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meet & Chat'),
        centerTitle: true,
        backgroundColor: kAppBarGreyColor,
        actions: [
          SizedBox(
            height: 30.0,
            width: 30.0,
            child: SvgPicture.asset(
              'assets/images/edit.svg',
              color: Colors.white70,
            ),
          )
        ],
      ),
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/b.jpg"),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                HomeOrangeButton(
                  ontap: _createNewMeeting,
                  text: 'New Meeting',
                ),
                HomeBlueButtons(
                  text: 'Join',
                  icon: Icons.add,
                  ontap: () {},
                ),
                HomeBlueButtons(
                  text: 'Schedule',
                  icon: Icons.date_range_outlined,
                  ontap: () {},
                ),
                HomeBlueButtons(
                  text: 'Share Screen',
                  icon: Icons.arrow_upward_outlined,
                  ontap: () {},
                ),
              ],
            ),
            Divider(
              color: Colors.grey[400],
              thickness: 2,
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Meet & Chat',
            backgroundColor: Color(0xff32353f),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.schedule,
            ),
            label: 'Mettings',
            backgroundColor: Color(0xff32353f),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contact_page),
            label: 'Contacts',
            backgroundColor: Color(0xff32353f),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
            backgroundColor: Color(0xff32353f),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }
}
