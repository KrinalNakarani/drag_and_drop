import 'package:flutter/material.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({Key? key}) : super(key: key);

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  List isAccepted = [false, false, false, false, false];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Drag & Drop Game"),
          centerTitle: true,
          backgroundColor: Colors.redAccent,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Draggable<String>(
                  data: "A1",
                  child: Container(
                    height: 100,
                    width: 100,
                    child: Image.asset("assets/images/cat1.png"),
                  ),
                  feedback: Container(
                    height: 100,
                    width: 100,
                    child: Image.asset("assets/images/cat1.png"),
                  ),
                  childWhenDragging: Container(),
                ),
                DragTarget(
                  builder: (context, accepted, rejected) {
                    return Container(
                      height: 100,
                      width: 100,
                      color: Colors.grey.shade200,
                      child: isAccepted[0]
                          ? Image.asset("assets/images/duck.png")
                          : Container(
                              child: Center(
                                  child: Text(
                                "Duck",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              )),
                            ),
                    );
                  },
                  onWillAccept: (data) {
                    return data == "A4";
                  },
                  onAccept: (data) {
                    setState(() {
                      isAccepted[0] = true;
                    });
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Draggable<String>(
                  data: "A2",
                  child: Container(
                    height: 100,
                    width: 100,
                    child: Image.asset("assets/images/cow.png"),
                  ),
                  feedback: Container(
                    height: 100,
                    width: 100,
                    child: Image.asset("assets/images/cow.png"),
                  ),
                  childWhenDragging: Container(),
                ),
                DragTarget(
                  builder: (context, accepted, rejected) {
                    return Container(
                      height: 100,
                      width: 100,
                      color: Colors.grey.shade200,
                      child: isAccepted[1]
                          ? Image.asset("assets/images/dog.png")
                          : Container(child: Center(
                          child: Text(
                            "Dog",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          )),),
                    );
                  },
                  onWillAccept: (data) {
                    return data == "A3";
                  },
                  onAccept: (data) {
                    setState(() {
                      isAccepted[1] = true;
                    });
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Draggable<String>(
                  data: "A3",
                  child: Container(
                    height: 100,
                    width: 100,
                    child: Image.asset("assets/images/dog.png"),
                  ),
                  feedback: Container(
                    height: 100,
                    width: 100,
                    child: Image.asset("assets/images/dog.png"),
                  ),
                  childWhenDragging: Container(),
                ),
                DragTarget(
                  builder: (context, accepted, rejected) {
                    return Container(
                      height: 100,
                      width: 100,
                      color: Colors.grey.shade200,
                      child: isAccepted[2]
                          ? Image.asset("assets/images/cow.png")
                          : Container(child: Center(
                          child: Text(
                            "Cow",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          )),),
                    );
                  },
                  onWillAccept: (data) {
                    return data == "A2";
                  },
                  onAccept: (data) {
                    setState(() {
                      isAccepted[2] = true;
                    });
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Draggable<String>(
                  data: "A4",
                  child: Container(
                    height: 100,
                    width: 100,
                    child: Image.asset("assets/images/duck.png"),
                  ),
                  feedback: Container(
                    height: 100,
                    width: 100,
                    child: Image.asset("assets/images/duck.png"),
                  ),
                  childWhenDragging: Container(),
                ),
                DragTarget(
                  builder: (context, accepted, rejected) {
                    return Container(
                      height: 100,
                      width: 100,
                      color: Colors.grey.shade200,
                      child: isAccepted[4]
                          ? Image.asset("assets/images/cat1.png")
                          : Container(child: Center(
                          child: Text(
                            "Cat",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          )),),
                    );
                  },
                  onWillAccept: (data) {
                    return data == "A1";
                  },
                  onAccept: (data) {
                    setState(() {
                      isAccepted[4] = true;
                    });
                  },
                ),
              ],
            ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   children: [
            //     Draggable<String>(
            //       data: "A5",
            //       child: Container(
            //         height: 100,
            //         width: 100,
            //         child: Image.asset("assets/images/frog.png"),
            //       ),
            //       feedback: Container(
            //         height: 100,
            //         width: 100,
            //         child: Image.asset("assets/images/frog.png"),
            //       ),
            //       childWhenDragging: Container(),
            //     ),
            //     DragTarget(
            //       builder: (context, accepted, rejected) {
            //         return Container(
            //           height: 100,
            //           width: 100,
            //           color: Colors.grey.shade200,
            //           child: isAccepted[5]
            //               ? ClipRRect(child: Image.asset("assets/images/cat1.png"))
            //               : Container(),
            //         );
            //       },
            //       onWillAccept: (data) {
            //         return data == "A1";
            //       },
            //       onAccept: (data) {
            //         setState(() {
            //           isAccepted[5] = true;
            //         });
            //       },
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
// DragTarget(
// builder: (context, accepted, rejected) {
// return Container(
// height: 100,
// width: 100,
// color: Colors.blue.shade100,
// child: isAccepted ? FlutterLogo() : Container(),
// );
// },
// onWillAccept: (data) {
// return data == "A1";
// },
// onAccept: (data) {
// setState(() {
// isAccepted = true;
// });
// },
// ),
