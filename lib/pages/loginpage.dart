import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:zoom_clone/utils/constant.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: h * 0.2,
              child: const Text(
                'Start or join a meeting',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            Lottie.asset(
              'assets/images/videoc.json',
              animate: true,
              width: 300,
              height: 300,
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text(
                'Join a Meeting',
              ),
            ),
            SizedBox(
              height: h * 0.05,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                InkWell(
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                      color: kLightBlueColor,
                    ),
                  ),
                ),
                SizedBox(
                  width: 50.0,
                ),
                InkWell(
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                      color: kLightBlueColor,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
