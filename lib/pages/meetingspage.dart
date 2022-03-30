import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zoom_clone/utils/constant.dart';

class MeetingsPage extends StatefulWidget {
  const MeetingsPage({Key? key}) : super(key: key);

  @override
  State<MeetingsPage> createState() => _MeetingsPageState();
}

class _MeetingsPageState extends State<MeetingsPage> {
  @override
  Widget build(BuildContext context) {
    String meetingId = '4174342069';
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Meetings',
          style: TextStyle(fontSize: 20.0, color: kMeetingTextColor),
        ),
        centerTitle: true,
        backgroundColor: kAppBarGreyColor,
        actions: [
          SizedBox(
            height: 25.0,
            width: 25.0,
            child: SvgPicture.asset(
              'assets/images/refresh.svg',
              color: kMeetingTextColor,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Personal Meeting ID',
            ),
            const SizedBox(
              height: 6.0,
            ),
            Text(
              meetingId,
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.5,
              ),
            ),
            const SizedBox(
              height: 6.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                  onPressed: () {},
                  child: const Text(
                    'Start',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  color: Colors.grey[200],
                  elevation: 0.0,
                  height: 35,
                  minWidth: 25,
                ),
                const SizedBox(
                  width: 15.0,
                ),
                MaterialButton(
                  onPressed: () {},
                  child: const Text(
                    'Send Invitation',
                    style: TextStyle(color: Colors.black),
                  ),
                  color: Colors.grey[200],
                  elevation: 0.0,
                  height: 35,
                  minWidth: 25,
                ),
                const SizedBox(
                  width: 15.0,
                ),
                MaterialButton(
                  onPressed: () {},
                  child: const Text(
                    'Edit',
                    style: TextStyle(color: Colors.black),
                  ),
                  color: Colors.grey[200],
                  elevation: 0.0,
                  height: 35,
                  minWidth: 25,
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.2,
            ),
            Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.2,
                    width: MediaQuery.of(context).size.height * 0.2,
                    child: SvgPicture.asset(
                      'assets/images/meeting.svg',
                      color: kAppBarGreyColor,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  Text(
                    'No Upcoming Meetings',
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.01,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  const Text(
                    'The scheduled meetings will be listed here',
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      letterSpacing: 1.5,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
//  SizedBox(
//                     height: MediaQuery.of(context).size.height * 0.6,
//                     child: SizedBox(
//                       height: MediaQuery.of(context).size.height * 0.2,
//                       width: MediaQuery.of(context).size.height * 0.2,
//                       child: SvgPicture.asset(
//                         'assets/images/meeting.svg',
//                         color: kAppBarGreyColor,
//                       ),
//                     ),
//                   ),