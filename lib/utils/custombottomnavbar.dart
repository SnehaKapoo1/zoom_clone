import 'package:flutter/material.dart';
import 'package:zoom_clone/utils/constant.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    Key? key,
    required this.iconSize,
  }) : super(key: key);

  final double iconSize;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      color: Colors.transparent,
      child: Container(
        height: 60,
        decoration: const BoxDecoration(
          color: kAppBarGreyColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  const Spacer(),
                  Icon(
                    Icons.chat_bubble_outlined,
                    size: iconSize,
                    color: kLightBlueColor,
                  ),
                  const Spacer(),
                ],
              ),
              Column(
                children: [
                  const Spacer(),
                  Icon(
                    Icons.watch_later_outlined,
                    size: iconSize,
                    color: kLightBlueColor,
                  ),
                  const Spacer(),
                ],
              ),
              Column(
                children: [
                  const Spacer(),
                  Icon(
                    Icons.portrait_outlined,
                    size: iconSize,
                    color: kLightBlueColor,
                  ),
                  const Spacer(),
                ],
              ),
              Column(
                children: [
                  const Spacer(),
                  Icon(
                    Icons.settings_outlined,
                    size: iconSize,
                    color: kLightBlueColor,
                  ),
                  const Spacer(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
