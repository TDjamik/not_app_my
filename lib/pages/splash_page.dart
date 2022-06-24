import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  static const id = "/splash_page";

  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade200,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // # title My Tasks
            const Center(
              child: Padding(
                padding: EdgeInsets.only(top: 35.0),
                child: Text(
                  "My Tasks",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),

            // # text مهامي
            const Center(
              child: Padding(
                padding: EdgeInsets.all(5.0),
                child: Text(
                  "مهامي",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),

            const SizedBox(
              height: 15,
            ),

            // #background image
            const Image(
              image: AssetImage("assets/images/image_not_app.png"),
            ),

            const SizedBox(
              height: 55,
            ),

            // #line image
            const Image(
              image: AssetImage("assets/images/image_line.png"),
            ),

            const SizedBox(
              height: 10,
            ),

            Container(
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.only(left: 30),
              child: Text(
                "Good",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w800,
                  color: Colors.white.withOpacity(0.5),
                ),
              ),
            ),

            //#text consistancy
            Container(
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.only(left: 25),
              child: const Text(
                "Consistancy",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                  color: Colors.white,
                ),
              ),
            ),

            Container(
              margin: const EdgeInsets.only(left: 350),
              alignment: Alignment.bottomRight,
              height: 30,
              width: 30,
              child: const Image(
                image: AssetImage("assets/images/image_cup.png"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
