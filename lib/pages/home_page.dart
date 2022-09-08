import 'package:flutter/material.dart';
import 'package:ui_design_example/model/home_model.dart';
import 'package:ui_design_example/pages/page_three.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Hi, jon?",
              style: TextStyle(
                  color: Color(0xff0D0D0D),
                  fontWeight: FontWeight.w400,
                  fontSize: 16.0),
            ),
            Text(
              "Welcome back",
              style: TextStyle(color: Colors.grey, fontSize: 10.0),
            )
          ],
        ),
        leadingWidth: 70.0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 25.0),
          child: Container(
            width: 40.0,
            height: 40.0,
            child: Image.asset("assets/images/profile.png"),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              // border: Border.all(color: const Color(0xff707070) )
            ),
          ),
        ),
        actions: [
          Image.asset("assets/images/qr-code.png"),
          const Icon(
            Icons.more_vert,
            color: Colors.black54,
            size: 45.0,
          )
        ],
      ),
      body: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.push<void>(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => PageThree(),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Center(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: MediaQuery.of(context).size.height * 0.18,
                  decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black12,
                            spreadRadius: 1.0,
                            blurRadius: 1.0)
                      ],
                      borderRadius: BorderRadius.circular(15.0),
                      color: const Color(0xffFF6E6A)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.add,
                        size: 60.0,
                        color: Colors.white30,
                      ),
                      Text(
                        "Create Wallet",
                        style: TextStyle(fontSize: 14.0, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          const Text(
            "Functions",
            style: TextStyle(
                color: Color(0xff0D0D0D),
                fontSize: 18.0,
                fontWeight: FontWeight.w500),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 35.0, vertical: 10.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.15,
              // color: Colors.blue,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: horizontalList.length,
                  itemBuilder: (context, i) {
                    var item = horizontalList[i];
                    return Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 15.0, horizontal: 9.0),
                      width: 90.0,
                      height: 120.0,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15.0),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.shade200,
                                spreadRadius: 2.0,
                                blurRadius: 1.0)
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            item.imgUrl,
                            width: 30.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 2.0),
                            child: Text(
                              item.title,
                              style: const TextStyle(
                                  fontSize: 12.0, fontWeight: FontWeight.w500),
                            ),
                          ),
                          Text(item.subTitle,
                              style: const TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w400)),
                        ],
                      ),
                    );
                  }),
            ),
          ),
          const Text("Recent Transection",
              style: TextStyle(
                  color: Color(0xff0D0D0D),
                  fontSize: 18.0,
                  fontWeight: FontWeight.w500)),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30.0),
            child: Image.asset("assets/images/paper.png"),
          ),
          const Text("No transections",
              style: TextStyle(
                  color: Colors.black54,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w500)),
          const Text("Let's get started",
              style: TextStyle(
                  color: Colors.black54,
                  fontSize: 13.0,
                  fontWeight: FontWeight.w400))
        ],
      ),
    );
  }
}
