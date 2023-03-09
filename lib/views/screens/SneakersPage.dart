import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:viva_1/views/screens/DescPage.dart';

import '../utils/list_utils.dart';

class SneakersPage extends StatefulWidget {
  const SneakersPage({Key? key}) : super(key: key);

  @override
  State<SneakersPage> createState() => _SneakersPageState();
}

class _SneakersPageState extends State<SneakersPage> {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () => setState(() {
                  Navigator.pop(context);
                }),
            child: Icon(CupertinoIcons.left_chevron)),
        title: Text("Sneakers Nike Shoes"),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: Sneakers.map(
              (e) => Card(
                child: InkWell(
                  onTap: () {
                    setState(() {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => DescPage(Sneakers: e),
                        ),
                      );
                    });
                  },
                  child: Column(
                    children: [
                      ListTile(
                        leading: SizedBox(
                          width: h * 0.1,
                          child: Image.network(e['Image']),
                        ),
                        trailing: SizedBox(
                          height: h * 0.2,
                          width: h * 0.1,
                          child: Text(e['Price']),
                        ),
                        title: Text(e['ItemName']),
                        subtitle: Text(e['Selling']),
                      ),
                    ],
                  ),
                ),
              ),
            ).toList(),
          ),
        ),
      ),
    );
  }
}
