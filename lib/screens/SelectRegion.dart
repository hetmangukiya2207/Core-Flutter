import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lifekick_shoes_ecommarce_app/utils/ImageUtils.dart';

class SelectRegion extends StatefulWidget {
  const SelectRegion({Key? key}) : super(key: key);

  @override
  State<SelectRegion> createState() => _SelectRegionState();
}

class _SelectRegionState extends State<SelectRegion> {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            Container(
              alignment: Alignment.center,
              child: Image.asset(ImagePath + AppLogo),
            ),
            Column(
              children: [
                Expanded(
                  flex: 5,
                  child: Container(
                    color: Colors.black.withOpacity(0.2),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(35),
                        topLeft: Radius.circular(35),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(height: h * 0.01,),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(h * 0.01),
                          ),
                          height: h * 0.01,
                          width: w * 0.2,
                        ),
                        SizedBox(height: h * 0.01,),
                        Text(
                          "PLEASE ENTER YOUR LOCATION",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: h * 0.025,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: h * 0.01,),
                        Row(
                          children: [
                            SizedBox(
                              width: w * 0.04,
                            ),
                            CircleAvatar(
                              radius: h * 0.04,
                              foregroundImage: AssetImage(RegionPagePath + IndiaFlag),
                            ),
                            SizedBox(
                              width: w * 0.07,
                            ),
                            Text(
                              "INDIA",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: h * 0.03,
                                  color: Colors.black),
                            ),
                            const Spacer(),
                            IconButton(
                              onPressed: () {
                                Navigator.of(context).pushNamedAndRemoveUntil('ExplorePage', (route) => false);
                              },
                              icon: const Icon(CupertinoIcons.right_chevron),
                            ),
                            SizedBox(
                              width: w * 0.02,
                            ),
                          ],
                        ),
                        const Divider(
                            color: Colors.black,
                            indent: 25,
                            endIndent: 25,
                            thickness: 1),
                        Row(
                          children: [
                            SizedBox(
                              width: w * 0.04,
                            ),
                            CircleAvatar(
                              radius: h * 0.04,
                              foregroundImage: AssetImage(RegionPagePath + JapanFlag),
                            ),
                            SizedBox(
                              width: w * 0.07,
                            ),
                            Text(
                              "JAPAN",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: h * 0.03,
                                  color: Colors.black),
                            ),
                            const Spacer(),
                            IconButton(
                              onPressed: () {
                                Navigator.of(context).pushNamedAndRemoveUntil('ExplorePage', (route) => false);
                              },
                              icon: const Icon(CupertinoIcons.right_chevron),
                            ),
                            SizedBox(
                              width: w * 0.02,
                            ),
                          ],
                        ),
                        const Divider(
                            color: Colors.black,
                            indent: 25,
                            endIndent: 25,
                            thickness: 1),
                        Row(
                          children: [
                            SizedBox(
                              width: w * 0.04,
                            ),
                            CircleAvatar(
                              radius: h * 0.04,
                              foregroundImage: AssetImage(RegionPagePath + UKFlag),
                            ),
                            SizedBox(
                              width: w * 0.07,
                            ),
                            Text(
                              "UNITED KINGDOM",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: h * 0.03,
                                  color: Colors.black),
                            ),
                            const Spacer(),
                            IconButton(
                              onPressed: () {
                                Navigator.of(context).pushNamedAndRemoveUntil('ExplorePage', (route) => false);
                              },
                              icon: const Icon(CupertinoIcons.right_chevron),
                            ),
                            SizedBox(
                              width: w * 0.02,
                            ),
                          ],
                        ),
                        const Divider(
                            color: Colors.black,
                            indent: 25,
                            endIndent: 25,
                            thickness: 1),
                        Row(
                          children: [
                            SizedBox(
                              width: w * 0.04,
                            ),
                            CircleAvatar(
                              radius: h * 0.04,
                              foregroundImage: AssetImage(RegionPagePath + USFlag),
                            ),
                            SizedBox(
                              width: w * 0.07,
                            ),
                            Text(
                              "UNITED STATES",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: h * 0.03,
                                  color: Colors.black),
                            ),
                            const Spacer(),
                            IconButton(
                              onPressed: () {
                                Navigator.of(context).pushNamedAndRemoveUntil('ExplorePage', (route) => false);
                              },
                              icon: const Icon(CupertinoIcons.right_chevron),
                            ),
                            SizedBox(
                              width: w * 0.02,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}
