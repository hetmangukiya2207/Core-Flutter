import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pr_3_dice_app/utils/image_utils.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;
    return Scaffold(
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage(
                  imagepath + bg,
                ),
                fit: BoxFit.cover,
              )),
            ),
            Column(
              children: [
                Spacer(),
                const Text("Total Amount : 5"),
                Spacer(),
                Expanded(
                  child: Row(
                    children: [
                      Spacer(),
                      Expanded(
                        flex: 25,
                        child: Image.asset(
                          imagepath + d3,
                          fit: BoxFit.fill,
                        ),
                      ),
                      const Spacer(),
                      Expanded(
                        flex: 25,
                        child: Image.asset(
                          imagepath + d2,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Stack(
                  children: [
                    Center(child: Image.asset(imagepath + btn)),
                    const Center(
                      child: Text(
                        "\nRoll Dice",
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
