import 'package:flutter/material.dart';

class JoinMeetingOptions extends StatefulWidget {
  final String text;
  final bool isMuted;
  final Function(bool) onChanged;
  const JoinMeetingOptions({
    Key? key,
    required this.text,
    required this.isMuted,
    required this.onChanged,
  }) : super(key: key);

  @override
  State<JoinMeetingOptions> createState() => _JoinMeetingOptionsState();
}

class _JoinMeetingOptionsState extends State<JoinMeetingOptions> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 5.0, right: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.text,
                style: const TextStyle(fontSize: 18),
              ),
              Switch(
                value: widget.isMuted,
                onChanged: widget.onChanged,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
