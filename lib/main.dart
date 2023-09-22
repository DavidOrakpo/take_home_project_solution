import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                AspectRatio(
                  aspectRatio: 16 / 9,
                  child: Image.asset(
                    "assets/images/top_image.jpeg",
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  height: size.height * 0.01,
                ),
                // const ListTile(
                //   contentPadding: EdgeInsets.symmetric(horizontal: 24),
                //   title: Text(
                //     "Oeschinen Lake Campground",
                //     style: TextStyle(
                //       fontWeight: FontWeight.bold,
                //     ),
                //   ),
                //   subtitle: Text(
                //     "Kandersteg, Switzerland",
                //     style: TextStyle(
                //       color: Colors.grey,
                //     ),
                //   ),
                //   trailing: Row(
                //     mainAxisAlignment: MainAxisAlignment.center,
                //     crossAxisAlignment: CrossAxisAlignment.center,
                //     mainAxisSize: MainAxisSize.min,
                //     children: [
                //       Icon(
                //         Icons.star,
                //         color: Colors.red,
                //       ),
                //       Text("41"),
                //     ],
                //   ),
                // ),
                SizedBox(
                  height: 80,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Container(
                          // color: Colors.purple.shade300,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 24, vertical: 10),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Oeschinen Lake Campground",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Kandersteg, Switzerland",
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          // color: Colors.blue,
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.red,
                              ),
                              Text("41"),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: size.height * 0.01,
                ),
                const FractionallySizedBox(
                  widthFactor: 0.9,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Icon(
                            Icons.call,
                            color: Colors.blue,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "CALL",
                            style: TextStyle(
                              color: Colors.blue,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.gps_fixed,
                            color: Colors.blue,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "ROUTE",
                            style: TextStyle(
                              color: Colors.blue,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.share,
                            color: Colors.blue,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "SHARE",
                            style: TextStyle(
                              color: Colors.blue,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: size.height * 0.05,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.0),
                  child: Text(
                    "Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.",
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
