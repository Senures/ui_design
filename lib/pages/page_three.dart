import 'package:flutter/material.dart';

class PageThree extends StatefulWidget {
  PageThree({Key? key}) : super(key: key);

  @override
  State<PageThree> createState() => _PageThreeState();
}

class _PageThreeState extends State<PageThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          title: const Text(
            "Transactions",
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500),
          ),
          elevation: 0.0,
          backgroundColor: Colors.white,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_ios))),
      body: Column(
        children: [
          Center(
            child: Image.asset(
              "assets/images/img.png",
              width: 150.0,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 20.0),
            child: Text(
              "If you have any trouble, click report issue\n                to receive our support",
              style: TextStyle(
                color: Color(0xff707070),
                fontSize: 18.0,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 16.0),
            child: Text(
              "Detail",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: Color(0xff707070),
                fontSize: 18.0,
              ),
            ),
          ),
          customList("Transaction No.", "123456789000"),
          customList("Date/Time", "08:36 PM 05/02/2020"),
          customList("To wallet", "BD wallet"),
          customList("Transaction status", "Success"),
          customList("Amount", "+2,000"),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 30.0, vertical: 35.0),
            child: Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.075,
              decoration: BoxDecoration(
                  color: const Color(0xffFF6E6A),
                  borderRadius: BorderRadius.circular(12.0)),
              child: const Text(
                "Next",
                style: TextStyle(color: Colors.white, fontSize: 18.0),
              ),
            ),
          )
        ],
      ),
    );
  }
}

customList(String left, String right) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 40.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          left,
          style: const TextStyle(color: Color(0xff707070), fontSize: 14.0),
        ),
        Text(
          right,
          style: const TextStyle(color: Color(0xff707070), fontSize: 14.0),
        ),
      ],
    ),
  );
}
