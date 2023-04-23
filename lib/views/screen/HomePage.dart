import 'package:flutter/material.dart';
import 'package:pr_7_instagram_app/views/utils/ImageUtils.dart';

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
        backgroundColor: Colors.black,
        title: Text(
          "Instagram",
          style: TextStyle(
            fontSize: h * 0.025,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(
          h * 0.02,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    border: Border.all(color: Colors.white),
                  ),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height: h * 0.02,
                          ),
                          Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              CircleAvatar(
                                radius: 40,
                                backgroundImage: AssetImage(ImagePath + s1),
                              ),
                              SizedBox(
                                height: h * 0.04,
                                child: FloatingActionButton(
                                  onPressed: () {
                                    Navigator.of(context).pushNamed('StoryPage');
                                  },
                                  child: Icon(
                                    Icons.add,
                                    size: h * 0.03,
                                  ),
                                  mini: true,
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: h * 0.02,
                          ),
                          Text(
                            "Your Story",
                            style: TextStyle(
                              fontSize: h * 0.02,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        width: w * 0.035,
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: h * 0.02,
                          ),
                          CircleAvatar(
                            radius: 40,
                            backgroundImage: AssetImage(ImagePath + s2),
                          ),
                          SizedBox(
                            height: h * 0.02,
                          ),
                          Text(
                            "darker_king_02",
                            style: TextStyle(
                              fontSize: h * 0.02,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        width: w * 0.035,
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: h * 0.02,
                          ),
                          CircleAvatar(
                            radius: 40,
                            backgroundImage: AssetImage(ImagePath + s3),
                          ),
                          SizedBox(
                            height: h * 0.02,
                          ),
                          Text(
                            "its_boy_02",
                            style: TextStyle(
                              fontSize: h * 0.02,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: h * 0.06,
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        height: h * 0.454,
                        width: w,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          border: Border.all(color: Colors.white),
                        ),
                        child: Column(
                          children: [
                            Container(
                              height: h * 0.1,
                              width: w,
                              color: Colors.black,
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: h * 0.01,
                                  ),
                                  CircleAvatar(
                                    radius: h * 0.04,
                                    backgroundImage: AssetImage(
                                      ImagePath + s2,
                                    ),
                                  ),
                                  SizedBox(
                                    width: h * 0.03,
                                  ),
                                  Text(
                                    "darker_king_02",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      fontSize: h * 0.03,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Image.asset(
                                ImagePath + p1,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: h * 0.03,
                      ),
                      Container(
                        height: h * 0.45,
                        width: w,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          border: Border.all(color: Colors.white),
                        ),
                        child: Column(
                          children: [
                            Container(
                              height: h * 0.1,
                              width: w,
                              color: Colors.black,
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: h * 0.01,
                                  ),
                                  CircleAvatar(
                                    radius: h * 0.04,
                                    backgroundImage: AssetImage(
                                      ImagePath + s3,
                                    ),
                                  ),
                                  SizedBox(
                                    width: h * 0.03,
                                  ),
                                  Text(
                                    "its_boy_02",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      fontSize: h * 0.03,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Image.asset(
                                ImagePath + p2,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: h * 0.03,
                      ),
                      Container(
                        height: h * 0.9,
                        width: w,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          border: Border.all(color: Colors.white),
                        ),
                        child: Column(
                          children: [
                            Container(
                              height: h * 0.1,
                              width: w,
                              color: Colors.black,
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: h * 0.01,
                                  ),
                                  CircleAvatar(
                                    radius: h * 0.04,
                                    backgroundImage: AssetImage(
                                      ImagePath + s2,
                                    ),
                                  ),
                                  SizedBox(
                                    width: h * 0.03,
                                  ),
                                  Text(
                                    "darker_king_02",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      fontSize: h * 0.03,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Image.asset(
                                ImagePath + p3,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}
