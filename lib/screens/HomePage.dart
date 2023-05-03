import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lifekick_shoes_ecommarce_app/utils/ImageUtils.dart';
import 'package:lifekick_shoes_ecommarce_app/utils/VariableUtils.dart';

import '../utils/ImageList.dart';

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
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.menu,
            size: h * 0.035,
            color: Colors.black,
          ),
        ),
        title: Text(
          "LIFEKICK SHOES",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: h * 0.022,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_vert,
              color: Colors.black,
            ),
          ),
          SizedBox(
            width: w * 0.02,
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(w * 0.04),
        child: Column(
          children: [
            SizedBox(
              height: h * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    // height: 150,
                    child: Text(
                      "DISCOVER OUR\nNEW STORIES",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: h * 0.032,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    // height: 150,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          SizedBox(
                            width: w * 0.03,
                          ),
                          CircleAvatar(
                            radius: h * 0.04,
                            backgroundImage:
                                AssetImage(HomePagePath + LogoPath + bata),
                          ),
                          SizedBox(
                            width: w * 0.03,
                          ),
                          CircleAvatar(
                            radius: h * 0.04,
                            backgroundImage:
                                AssetImage(HomePagePath + LogoPath + libetry),
                          ),
                          SizedBox(
                            width: w * 0.03,
                          ),
                          CircleAvatar(
                            radius: h * 0.04,
                            backgroundImage:
                                AssetImage(HomePagePath + LogoPath + rebook),
                          ),
                          SizedBox(
                            width: w * 0.03,
                          ),
                          CircleAvatar(
                            radius: h * 0.04,
                            backgroundImage:
                                AssetImage(HomePagePath + LogoPath + adidas),
                          ),
                          SizedBox(
                            width: w * 0.03,
                          ),
                          CircleAvatar(
                            radius: h * 0.04,
                            backgroundImage:
                                AssetImage(HomePagePath + LogoPath + puma),
                          ),
                          SizedBox(
                            width: w * 0.03,
                          ),
                          CircleAvatar(
                            radius: h * 0.04,
                            backgroundImage:
                                AssetImage(HomePagePath + LogoPath + woodland),
                          ),
                          SizedBox(
                            width: w * 0.03,
                          ),
                          CircleAvatar(
                            radius: h * 0.04,
                            backgroundImage:
                                AssetImage(HomePagePath + LogoPath + metro),
                          ),
                          SizedBox(
                            width: w * 0.03,
                          ),
                          CircleAvatar(
                            radius: h * 0.04,
                            backgroundImage:
                                AssetImage(HomePagePath + LogoPath + nike),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: h * 0.02,
            ),
            Column(
              children: [
                Text(
                  "EXTRA 10% OFF ON ORDERS ABOVE",
                  style: TextStyle(
                    fontSize: h * 0.025,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: h * 0.02,),
                Text(
                  "₹3999",
                  style: TextStyle(
                    fontSize: h * 0.03,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: h * 0.01,
                ),
                Text(
                  "Auto-applied Checkout",
                  style: TextStyle(
                    fontSize: h * 0.03,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: h * 0.02,
            ),
            Expanded(
              flex: 1,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: AdvertisePost.map(
                    (e) => Column(
                      children: [
                        Container(
                          height: h * 0.45,
                          width: w,
                          color: Colors.amber,
                          child: Image.asset(
                            e['AdvertiseImage'],
                            fit: BoxFit.fill,
                          ),
                        ),
                        Container(
                          height: h * 0.08,
                          width: w,
                          color: Colors.black,
                          child: Row(
                            children: [
                              SizedBox(
                                width: w * 0.02,
                              ),
                              Text(
                                "SHOP NOW",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: h * 0.025,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Spacer(),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                width: w * 0.02,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: h * 0.04,
                        ),
                      ],
                    ),
                  ).toList(),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: h * 0.07,
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        width: w,
        child: Padding(
          padding: EdgeInsets.all(h * 0.02),
          child: Row(
            children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    CupertinoIcons.home,
                    color: Colors.black,
                    size: h * 0.035,
                  ),
                ),
                Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    CupertinoIcons.search,
                    color: Colors.black,
                    size: h * 0.035,
                  ),
                ),
                Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    CupertinoIcons.cart,
                    color: Colors.black,
                    size: h * 0.035,
                  ),
                ),
                Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    CupertinoIcons.profile_circled,
                    color: Colors.black,
                    size: h * 0.035,
                  ),
                ),
              ],
          ),
        ),
      ),
    );
  }
}
