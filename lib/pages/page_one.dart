import 'package:flutter/material.dart';
import 'package:ui_design_example/model/home_model.dart';
import 'package:ui_design_example/model/ticket_model.dart';

class PageOne extends StatefulWidget {
  PageOne({Key? key}) : super(key: key);

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          title: const Text(
            "Services",
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500),
          ),
          elevation: 0.0,
          backgroundColor: Colors.white,
          leading: IconButton(
              onPressed: () {}, icon: const Icon(Icons.arrow_back_ios))),
      body: SingleChildScrollView(
        primary: true,
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0),
              child: Center(
                child: Text(
                  "We provide top service for you\n            and your family",
                  style: TextStyle(
                      color: Color(0xff707070),
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 40.0),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.07,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    border: Border.all(
                      color: const Color(0xff707070),
                    )),
                child: TextFormField(
                  decoration: const InputDecoration(
                      hintText: "Search",
                      hintStyle:
                          TextStyle(color: Color(0xff707070), fontSize: 14.0),
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.search)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: GridView.builder(
                    primary: false,
                    itemCount: ticketList.length,
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                    itemBuilder: (context, index) {
                      var it = ticketList[index];
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 20),
                        child: Container(
                          width: 90.0,
                          height: 100.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15.0),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade200,
                                spreadRadius: 2.0,
                                blurRadius: 1.0,
                              )
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                it.imgUrl,
                                width: 50.0,
                              ),
                              Text(it.title)
                            ],
                          ),
                        ),
                      );
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
