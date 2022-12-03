import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:hissa/formData.dart';

import 'Tools/tools.dart';

class homePage extends StatelessWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      backgroundColor: Colors.white,
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
                              decoration: const BoxDecoration(
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
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 25, vertical: 25),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Builder(
                                            builder: (context) {
                                              return GestureDetector(
                                                  child: Container(
                                                    height: 40,
                                                    width: 40,
                                                    decoration: BoxDecoration(
                                                        shape: BoxShape.circle,
                                                        color: Colors.grey[100],
                                                        boxShadow: [
                                                          BoxShadow(
                                                              color: Colors.black.withOpacity(.3),
                                                              offset: Offset(2, 2),
                                                              blurRadius: 5)
                                                        ]),
                                                    child: Icon(Icons.menu),
                                                  ),
                                                  onTap:()=> Scaffold.of(context).openDrawer()
                                              );
                                            }
                                        ),/*
                                        GestureDetector(
                                          child: Icon(
                                            Icons.arrow_forward_rounded,
                                            color: Colors.white,
                                          ),
                                          onTap: () => Get.back(),
                                        )*/
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
                                Padding(
                                     padding: const EdgeInsets.only(right: 5.0,bottom: 15),

                                       child: Column(
                                         crossAxisAlignment: CrossAxisAlignment.end,
                                         children: [
                                           texts(text: 'الرئيسية',size: 25,fw: FontWeight.bold),
                                           texts(text: 'الخدمات التي يقدمها التطبيق',clr: Colors.grey[600])
                                         ],
                                       ),
                                     ),
                                    GestureDetector(
                                      child: Container(
                                        height: 110,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              color: Colors.white,
                                              boxShadow: [
                                                BoxShadow(
                                                    color: Colors.black
                                                        .withOpacity(.1),
                                                    blurRadius: 2,
                                                    offset: Offset(2, 2))
                                              ]),
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(horizontal: 25.0),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(right: 25),
                                                  child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.end,
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [
                                                    texts(text: 'حساب الحصة',
                                                        fw: FontWeight.bold,
                                                        size: 25),
                                                    Align(
                                                        alignment: Alignment.centerRight,
                                                        child: texts(text: 'حساب الحصة بالاثمان والأحزاب',size: 18,clr: Colors.grey[600]))
                                                  ],),
                                                ),
                                                Container(
                                                  height: 25,
                                                  width: 25,
                                                  decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      color: Colors.orangeAccent),
                                                ),
                                              ],
                                            ),
                                          )),
                                      onTap: ()=>Get.to(StartForm()),
                                    ),
                                    SizedBox(height: 15,),
                                    Container(
                                        height: 110,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(20),
                                            color: Colors.white,
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Colors.black
                                                      .withOpacity(.1),
                                                  blurRadius: 2,
                                                  offset: Offset(2, 2))
                                            ]),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 25.0),
                                          child: Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.end,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(right: 25),
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.end,
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [
                                                    texts(text: 'أجزاء القرآن الكريم',
                                                        fw: FontWeight.bold,
                                                        size: 25),
                                                    Align(
                                                        alignment: Alignment.centerRight,
                                                        child: texts(text: 'حدود أجزاء بالأثمان',size: 18,clr: Colors.grey[600]))
                                                  ],),
                                              ),
                                              Container(
                                                height: 25,
                                                width: 25,
                                                decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    color: Colors.orangeAccent),
                                              ),
                                            ],
                                          ),
                                        )),

                                  ]
                                ),
                              ),
                            ),
                          ),
                        ]
                    )
                )
            )
        )
    );
  }
}
