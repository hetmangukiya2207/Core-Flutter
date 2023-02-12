import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  List<Map> r1 = [
    {
      'I': Icons.add,
    },
    {
      'I': Icons.pause_circle,
    },
    {
      'I': Icons.unfold_less,
    },
    {
      'I': Icons.safety_check,
    },
    {
      'I': Icons.lock_clock,
    },
  ];
  List<Map> r2 = [
    {
      'I2': Icons.wifi_protected_setup,
    },
    {
      'I2': Icons.people,
    },
    {
      'I2': Icons.refresh,
    },
    {
      'I2': Icons.pan_tool_sharp,
    },
    {
      'I2': Icons.move_down,
    },
  ];
  List<Map> r3 = [
    {
      'I3': Icons.label,
    },
    {
      'I3': Icons.menu,
    },
    {
      'I3': Icons.arrow_back_ios_new,
    },
    {
      'I3': Icons.file_download,
    },
    {
      'I3': Icons.public_sharp,
    },
  ];
  List<Map> r4 = [
    {
      'I4': Icons.error,
    },
    {
      'I4': Icons.stop,
    },
    {
      'I4': Icons.play_arrow,
    },
    {
      'I4': Icons.radio,
    },
    {
      'I4': Icons.mouse,
    },
  ];
  List<Map> r5 = [
    {
      'I5': Icons.save,
    },
    {
      'I5': Icons.scatter_plot,
    },
    {
      'I5': Icons.dialpad_outlined,
    },
    {
      'I5': Icons.call,
    },
    {
      'I5': Icons.multitrack_audio,
    },
  ];
  List<Map> r6 = [
    {
      'I6': Icons.save,
    },
    {
      'I6': Icons.drive_file_rename_outline,
    },
    {
      'I6': Icons.create_new_folder,
    },
    {
      'I6': Icons.publish_outlined,
    },
    {
      'I6': (Icons.tiktok),
    },
  ];

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double w = s.width;
    double h = s.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Icons",
          style: TextStyle(
            fontSize: h * 0.03,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: w,
                child: Expanded(
                  flex: 1,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: r1
                          .map((e) => Container(
                                height: h * 0.20,
                                width: h * 0.20,
                                alignment: Alignment.center,
                                margin: const EdgeInsets.all(5),
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.grey,
                                      offset: Offset(0, 10), //(x,y)
                                      blurRadius: 20,
                                    ),
                                  ],
                                ),
                                child: Icon(e['I']),
                              ))
                          .toList(),
                    ),
                  ),
                ),
              ),
              Container(
                width: w,
                child: Expanded(
                  flex: 1,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: r2
                          .map((e) => Container(
                                height: h * 0.20,
                                width: h * 0.20,
                                alignment: Alignment.center,
                                margin: const EdgeInsets.all(5),
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.grey,
                                      offset: Offset(0, 10), //(x,y)
                                      blurRadius: 20,
                                    ),
                                  ],
                                ),
                                child: Icon(e['I2']),
                              ))
                          .toList(),
                    ),
                  ),
                ),
              ),
              Container(
                width: w,
                child: Expanded(
                  flex: 1,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: r3
                          .map((e) => Container(
                                height: h * 0.20,
                                width: h * 0.20,
                                alignment: Alignment.center,
                                margin: const EdgeInsets.all(5),
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.grey,
                                      offset: Offset(0, 10), //(x,y)
                                      blurRadius: 20,
                                    ),
                                  ],
                                ),
                                child: Icon(e['I3']),
                              ))
                          .toList(),
                    ),
                  ),
                ),
              ),
              Container(
                width: w,
                child: Expanded(
                  flex: 1,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: r4
                          .map((e) => Container(
                                height: h * 0.20,
                                width: h * 0.20,
                                alignment: Alignment.center,
                                margin: const EdgeInsets.all(5),
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.grey,
                                      offset: Offset(0, 10), //(x,y)
                                      blurRadius: 20,
                                    ),
                                  ],
                                ),
                                child: Icon(e['I4']),
                              ))
                          .toList(),
                    ),
                  ),
                ),
              ),
              Container(
                width: w,
                child: Expanded(
                  flex: 1,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: r5
                          .map((e) => Container(
                                height: h * 0.20,
                                width: h * 0.20,
                                alignment: Alignment.center,
                                margin: const EdgeInsets.all(5),
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.grey,
                                      offset: Offset(0, 10), //(x,y)
                                      blurRadius: 20,
                                    ),
                                  ],
                                ),
                                child: Icon(e['I5']),
                              ))
                          .toList(),
                    ),
                  ),
                ),
              ),
              Container(
                width: w,
                child: Expanded(
                  flex: 1,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: r6
                          .map((e) => Container(
                                height: h * 0.20,
                                width: h * 0.20,
                                alignment: Alignment.center,
                                margin: const EdgeInsets.all(5),
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.grey,
                                      offset: Offset(0, 10), //(x,y)
                                      blurRadius: 20,
                                    ),
                                  ],
                                ),
                                child: Icon(e['I6']),
                              ))
                          .toList(),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
