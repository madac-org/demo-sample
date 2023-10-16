import 'package:echo_cash/core/constants/app_constants.dart';
import 'package:echo_cash/core/constants/app_globals.dart';
import 'package:flutter/material.dart';

// MediaQuery.of(context).size.height * 1,
class SuccessfullScreen extends StatelessWidget {
  final String title;

  final String subtitle;

  final String message;

  const SuccessfullScreen(
      {Key? key,
      required this.title,
      required this.subtitle,
      required this.message})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ClipPath(
              clipper: CurveContainer(), //to make the curve
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 2.4,
                color: secondaryColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      'assets/images/checkedIcon.png',
                      width: 75,
                      height: 75,
                    ),
                    const Text(
                      'Your account has been created',
                      style: buttonTextDarkBgStyle,
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  const Text(
                    'Thank you for Registering',
                    style: headingStyle,
                  ),
                  const SizedBox(
                    height: 23,
                  ),
                  const Text(
                    'A verification link has been sent to your email',
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(51, 73, 107, 1)),
                  ),
                  const SizedBox(
                    height: 23,
                  ),
                  Text(
                    'Please sign in to your email to verify your account',
                    style: descriptionStyle,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 70,
            ),
            Image.asset(
              'assets/images/logo_in_app.png',
              width: 100,
              height: 100,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        backgroundColor: whiteColor,
        child: Image.asset(
          'assets/images/removeIcon.png',
          width: 25,
          height: 25,
        ),
      ),
    );
  }
}

class CurveContainer extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height - 20);
    path.quadraticBezierTo(
        size.width / 4, size.height, size.width / 2, size.height);
    path.quadraticBezierTo(size.width - (size.width / 4), size.height,
        size.width, size.height - 20);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
