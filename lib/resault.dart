import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:hissa/HomePage.dart';
import 'package:hissa/formData.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'Tools/tools.dart';

class ResaultPage extends StatefulWidget {
  const ResaultPage({Key? key}) : super(key: key);

  @override
  State<ResaultPage> createState() => _ResaultPageState();
}

class _ResaultPageState extends State<ResaultPage> {
  int count = 28;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawerEnableOpenDragGesture: false,
      drawer: AppDrawer(),
      body: SafeArea(
        child: Center(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 15),
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(25),
                        topLeft: Radius.circular(25)),
                  ),
                  child: Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width * .95,
                    decoration: BoxDecoration(
                      color: Colors.orangeAccent,
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(25),
                          topRight: Radius.circular(25),
                          topLeft: Radius.circular(25)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 25, vertical: 25),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Builder(builder: (context) {
                                return GestureDetector(
                                    child: Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.grey[100],
                                          boxShadow: [
                                            BoxShadow(
                                                color: Colors.black
                                                    .withOpacity(.3),
                                                offset: Offset(2, 2),
                                                blurRadius: 5)
                                          ]),
                                      child: Icon(Icons.menu),
                                    ),
                                    onTap: () =>
                                        Scaffold.of(context).openDrawer());
                              }),
                              GestureDetector(
                                child: Icon(
                                  Icons.arrow_forward_rounded,
                                  color: Colors.white,
                                ),
                                onTap: () => Get.back(),
                              )
                            ],
                          ),
                        ),
                        Center(
                            child: SvgPicture.asset(
                          'lib/assets/book.svg',
                          color: Colors.white,
                          height: 100,
                          width: 100,
                        ))
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                      color: Colors.orangeAccent,
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(25),
                          bottomLeft: Radius.circular(25))),
                  child: Container(
                    width: MediaQuery.of(context).size.width * .95,
                    height: MediaQuery.of(context).size.height - 265,
                    decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(25),
                            bottomRight: Radius.circular(25),
                            bottomLeft: Radius.circular(25))),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 15.0, right: 15, top: 15, bottom: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          texts(text: 'النتيجة', size: 40),
                          Container(
                            height: 200,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black.withOpacity(.1),
                                      blurRadius: 2,
                                      offset: Offset(2, 2))
                                ]),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    texts(
                                        text: "ثمن ",
                                        size: 25,
                                        fw: FontWeight.bold),
                                    texts(
                                        text: count.toString(),
                                        size: 25,
                                        fw: FontWeight.bold)
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    texts(
                                        text: "حزب ",
                                        size: 25,
                                        fw: FontWeight.bold),
                                    texts(
                                        text: (count / 8).toString(),
                                        size: 25,
                                        fw: FontWeight.bold)
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const Expanded(child: SizedBox()),
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: Center(
                              child: Container(
                                width: MediaQuery.of(context).size.width * .8,
                                height: 50,
                                decoration: BoxDecoration(
                                  // color: Colors.orangeAccent,
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                child: ElevatedButton(
                                  onPressed: () => {Get.to(StartForm())},
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.orangeAccent),
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(25.0),
                                          side: const BorderSide(
                                              color: Colors.orangeAccent)),
                                    ),
                                  ),
                                  child: texts(
                                      text: 'الرئيسية',
                                      size: 25,
                                      fw: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
