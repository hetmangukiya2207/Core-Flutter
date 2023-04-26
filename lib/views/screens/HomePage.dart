import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pr_5_inoice_generator/views/utils/ListUtils.dart';

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
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed("CartPage",);
            },
            icon: Icon(
              CupertinoIcons.cart,
              color: Colors.black,
            ),
          ),
        ],
        title: Text(
          "ELECTRONIQUE",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w500,
            fontSize: h * 0.02,
          ),
        ),
        leading: Icon(
          Icons.vertical_distribute_rounded,
          color: Colors.black,
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.all(h * 0.02),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "MOBILES",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  fontSize: h * 0.02,
                ),
              ),
              SizedBox(
                height: h * 0.02,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: Mobiles.map(
                    (e) => Row(
                      children: [
                        Container(
                          height: h * 0.4,
                          width: w * 0.6,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(h * 0.015),
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(h * 0.01),
                            child: Column(
                              children: [
                                Container(
                                  height: h * 0.25,
                                  width: w,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(h * 0.01),
                                    color: Colors.black,
                                  ),
                                  child: Image.asset(
                                    e['ItemImages'],
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                SizedBox(
                                  height: h * 0.01,
                                ),
                                Column(
                                  children: [
                                    Text(
                                      e['BrandName'],
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: h * 0.02,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(
                                      height: h * 0.01,
                                    ),
                                    Text(
                                      e['Price'],
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: h * 0.025,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                                Spacer(),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).pushNamed('CartPage');
                                  },
                                  child: Container(
                                    alignment: Alignment.center,
                                    height: h * 0.05,
                                    width: w,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(h * 0.01),
                                      color: Colors.white,
                                      border: Border.all(
                                        color: Colors.black,
                                      ),
                                    ),
                                    child: Text(
                                      "Buy To Cart",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: h * 0.025,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: w * 0.02,
                        ),
                      ],
                    ),
                  ).toList(),
                ),
              ),
              SizedBox(
                height: h * 0.02,
              ),
              Text(
                "LAPTOPS",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  fontSize: h * 0.02,
                ),
              ),
              SizedBox(
                height: h * 0.02,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: Laptops.map(
                    (e) => Row(
                      children: [
                        Container(
                          height: h * 0.43,
                          width: w * 0.6,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(h * 0.015),
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(h * 0.01),
                            child: Column(
                              children: [
                                Container(
                                  height: h * 0.25,
                                  width: w,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(h * 0.01),
                                    color: Colors.black,
                                  ),
                                  child: Image.asset(
                                    e['ItemImages'],
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                SizedBox(
                                  height: h * 0.01,
                                ),
                                Column(
                                  children: [
                                    Text(
                                      e['BrandName'],
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: h * 0.02,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(
                                      height: h * 0.01,
                                    ),
                                    Text(
                                      e['Price'],
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: h * 0.025,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                                Spacer(),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).pushNamed('CartPage');
                                  },
                                  child: Container(
                                    alignment: Alignment.center,
                                    height: h * 0.05,
                                    width: w,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(h * 0.01),
                                      color: Colors.white,
                                      border: Border.all(
                                        color: Colors.black,
                                      ),
                                    ),
                                    child: Text(
                                      "Buy To Cart",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: h * 0.025,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: w * 0.02,
                        ),
                      ],
                    ),
                  ).toList(),
                ),
              ),
              SizedBox(
                height: h * 0.02,
              ),
              Text(
                "TABLETS",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  fontSize: h * 0.02,
                ),
              ),
              SizedBox(
                height: h * 0.02,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: tablet
                      .map(
                        (e) => Row(
                          children: [
                            Container(
                              height: h * 0.4,
                              width: w * 0.6,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(h * 0.015),
                                color: Colors.white,
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(h * 0.01),
                                child: Column(
                                  children: [
                                    Container(
                                      height: h * 0.25,
                                      width: w,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(h * 0.01),
                                        color: Colors.black,
                                      ),
                                      child: Image.asset(
                                        e['ItemImages'],
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    SizedBox(
                                      height: h * 0.01,
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          e['BrandName'],
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: h * 0.02,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        SizedBox(
                                          height: h * 0.01,
                                        ),
                                        Text(
                                          e['Price'],
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: h * 0.025,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Spacer(),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.of(context)
                                            .pushNamed('CartPage');
                                      },
                                      child: Container(
                                        alignment: Alignment.center,
                                        height: h * 0.05,
                                        width: w,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(h * 0.01),
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.black,
                                          ),
                                        ),
                                        child: Text(
                                          "Buy To Cart",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: h * 0.025,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: w * 0.02,
                            ),
                          ],
                        ),
                      )
                      .toList(),
                ),
              ),
              SizedBox(
                height: h * 0.02,
              ),
              Text(
                "WATCHES",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  fontSize: h * 0.02,
                ),
              ),
              SizedBox(
                height: h * 0.02,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: Watches.map(
                    (e) => Row(
                      children: [
                        Container(
                          height: h * 0.4,
                          width: w * 0.6,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(h * 0.015),
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(h * 0.01),
                            child: Column(
                              children: [
                                Container(
                                  height: h * 0.25,
                                  width: w,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(h * 0.01),
                                    color: Colors.black,
                                  ),
                                  child: Image.asset(
                                    e['ItemImages'],
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                SizedBox(
                                  height: h * 0.01,
                                ),
                                Column(
                                  children: [
                                    Text(
                                      e['BrandName'],
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: h * 0.02,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(
                                      height: h * 0.01,
                                    ),
                                    Text(
                                      e['Price'],
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: h * 0.025,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                                Spacer(),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).pushNamed('CartPage');
                                  },
                                  child: Container(
                                    alignment: Alignment.center,
                                    height: h * 0.05,
                                    width: w,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(h * 0.01),
                                      color: Colors.white,
                                      border: Border.all(
                                        color: Colors.black,
                                      ),
                                    ),
                                    child: Text(
                                      "Buy To Cart",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: h * 0.025,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: w * 0.02,
                        ),
                      ],
                    ),
                  ).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Color(0xffEDEDED),
    );
  }
}
