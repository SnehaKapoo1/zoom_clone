import 'package:flutter/material.dart';
import 'package:zoom_clone/utils/constant.dart';

class HomeBlueButtons extends StatelessWidget {
  final IconData icon;
  final String text;
  final VoidCallback ontap;
  const HomeBlueButtons(
      {Key? key, required this.text, required this.icon, required this.ontap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0.0, 15.0, 8.0, 0.0),
      child: Column(
        children: [
          InkWell(
            child: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18.0),
                color: kLightBlueColor,
                shape: BoxShape.rectangle,
              ),
              child: Padding(
                padding: const EdgeInsets.all(
                  18.0,
                ),
                child: Container(
                  child: Icon(
                    icon,
                    color: kLightBlueColor,
                    size: 15,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    color: Colors.white,
                    shape: BoxShape.rectangle,
                  ),
                ),
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
