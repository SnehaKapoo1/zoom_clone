//import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:zoom_clone/utils/constant.dart';

class HomeOrangeButton extends StatelessWidget {
  final String text;
  final VoidCallback ontap;
  const HomeOrangeButton({Key? key, required this.text, required this.ontap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
      child: Column(
        children: [
          InkWell(
            child: Container(
              height: 60,
              width: 60,
              child: const Padding(
                padding: EdgeInsets.all(
                  2.0,
                ),
                child: Icon(
                  Icons.videocam,
                  color: Colors.white,
                  size: 40,
                ),
              ),
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(18.0),
                color: const Color(0xffff742d),
              ),
            ),
            onTap: ontap,
          ),
          const SizedBox(
            height: 3.0,
          ),
          Text(
            text,
            style: const TextStyle(
              color: kGreyTextColor,
            ),
          )
        ],
      ),
    );
  }
}
