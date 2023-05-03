import 'package:flutter/material.dart';
import 'package:lifekick_shoes_ecommarce_app/utils/ImageUtils.dart';

class ExplorPage extends StatefulWidget {
  const ExplorPage({Key? key}) : super(key: key);

  @override
  State<ExplorPage> createState() => _ExplorPageState();
}

class _ExplorPageState extends State<ExplorPage> {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: h,
            width: w,
            child: Image.asset(
              ExplorePagePath + BgExplore,
              fit: BoxFit.fill,
            ),
          ),
          Container(
            height: h,
            width: w,
            color: Colors.black.withOpacity(0.5),
          ),
          Column(
            children: [
              SizedBox(
                height: h * 0.3,
              ),
              Padding(
                padding: EdgeInsets.all(h * 0.02),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "BEFORE \nJUMPING IN\nWE'D LOVE TO\nSHOW YOUR SOME\nHIGHLIGHTS",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                        fontSize: h * 0.045),
                  ),
                ),
              ),
              SizedBox(
                height: h * 0.28,
              ),
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  height: h * 0.07,
                  width: w * 0.6,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                        Colors.white.withOpacity(0.9),
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context)
                          .pushNamedAndRemoveUntil('/', (route) => false);
                    },
                    child: Text(
                      "EXPLORE THE PAGE",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: h * 0.025,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
