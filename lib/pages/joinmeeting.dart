import 'package:flutter/material.dart';
import 'package:zoom_clone/jitsi_sdk/jitsi_meet.dart';
import 'package:zoom_clone/utils/constant.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:zoom_clone/widget/joinmeetingoptions.dart';

class JoinMeeting extends StatefulWidget {
  const JoinMeeting({Key? key}) : super(key: key);

  @override
  State<JoinMeeting> createState() => _JoinMeetingState();
}

class _JoinMeetingState extends State<JoinMeeting> {
  late final _meetingIdController;
  late final _nameController;
  bool isAudioMuted = true;
  bool isVideoTurnedOff = true;

  @override
  void initState() {
    _meetingIdController = TextEditingController();
    _nameController = TextEditingController(text: 'Sneha Kapoor');

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Join a Meeting',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        centerTitle: true,
        leading: const Center(
          child: Text(
            'Cancel',
            style: TextStyle(color: kLightBlueColor),
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 18.0),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: TextField(
                controller: _meetingIdController,
                maxLines: 1,
                textAlign: TextAlign.center,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Meeting Id',
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 18.0),
            child: RichText(
              text: const TextSpan(
                text: "Join with a personal link name",
                style: TextStyle(
                  color: kLightBlueColor,
                  fontSize: 15.0,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 18.0),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: TextField(
                controller: _nameController,
                maxLines: 1,
                textAlign: TextAlign.center,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: MaterialButton(
              color: kLightBlueColor,
              onPressed: _JoinMeetingById,
              child: const Center(
                child: Text(
                  'Join',
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(22.0)),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 5.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: AutoSizeText(
                'If you received an invitation link, tap on the link to join the meeting',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 18.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 5.0,
            ),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                'JOIN OPTIONS'.toUpperCase(),
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          JoinMeetingOptions(
            text: 'Don\'t Connect To Audio',
            isMuted: true,
            onChanged: (value) => _onAudioMuted(value),
          ),
          JoinMeetingOptions(
            text: 'Don\'t Connect To Audio',
            isMuted: true,
            onChanged: (value) => _onAudioMuted(value),
          ),
        ],
      ),
    );
  }

  _onAudioMuted(bool value) {
    setState(() {
      isAudioMuted = value;
    });
  }

  _onVideoTurnedOff(bool value) {
    setState(() {
      isVideoTurnedOff = value;
    });
  }

  _JoinMeetingById() {
    ZoomMeet _zoom = ZoomMeet();
    _zoom.createMeeting(
      roomName: _meetingIdController.text,
      isAudioMuted: isAudioMuted,
      isVideoMuted: isVideoTurnedOff,
      username: _nameController.text,
    );
  }
}
