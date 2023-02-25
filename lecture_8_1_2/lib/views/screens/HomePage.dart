import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  double cost = 0;
  List list = [
    {'id': '1', 'name': 'Smart Watch', 'price': '22000', 'category': 'accessories'},
    {'id': '2', 'name': 'Shirts', 'price': '2000', 'category': 'Wearable'},
    {'id': '3', 'name': 'Pents', 'price': '2500', 'category': 'Wearable'},
    {'id': '4', 'name': 'A.C', 'price': '28000', 'category': 'accessories'},
    {'id': '5', 'name': 'Pots','price': '1200','category': 'decoration' },
    {'id': '6', 'name': 'Airbuds', 'price': '9000', 'category': 'accessories'},
    {'id': '7', 'name': 'T.V','price': '35000','category': 'accessories ' },
    {'id': '8', 'name': 'Android Phone','price': '14000','category': 'accessories '},
    {'id': '9', 'name': 'Iphone','price': '90000','category': 'accessories '},
    {'id': '10','name': 'Belt','price': '2500', 'category': 'Mens accessories '}
  ];
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Products Filter",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: const [Icon(Icons.grid_on_rounded)],
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Slider(
                max: 100000,
                min: 0,
                divisions: 100000,
                onChanged: (double a) {
                  setState(() {
                    cost = a;
                  });
                },
                value:cost,
              ),
              Text(
                "All Products < Rs. ${cost.toInt()}",
                style:
                const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const Padding(padding: EdgeInsets.only(bottom: 15)),
              Column(
                children: list.map((e) {
                  if (double.parse(e['price']) < cost) {
                    return Column(
                      children: [
                        const SizedBox(
                          height: 15,
                        ),
                        Container(
                          height: h*0.1,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.black12,
                                  spreadRadius: 2,
                                  blurRadius: 3,

                                ),
                              ],
                              borderRadius: BorderRadius.circular(15)),
                          child: Row(
                            children: [
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [Text(e['id'])],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(e['name'],style: const TextStyle(
                                      fontSize: 21,
                                    ),),
                                    Text(e['category']),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(e['price'],style: const TextStyle(
                                      fontSize: 21,
                                    ),),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    );
                  }
                  return const SizedBox();
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}