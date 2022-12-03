import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:hissa/EndingPage.dart';
import 'package:hissa/Tools/tools.dart';

class StartForm extends StatefulWidget {
  @override
  State<StartForm> createState() => _StartFormState();
}

class _StartFormState extends State<StartForm> {
  String soura = Sorates.first;
  int Aya = Ayat.first;


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
                          topLeft: Radius.circular(25)
                      ),
                  ),

                  child: Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width*.95,
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
                              ),
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
                  decoration: BoxDecoration(
                    color: Colors.orangeAccent,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(25),
                      bottomLeft: Radius.circular(25)
                    )
                  ),

                  child: Container(
                    width: MediaQuery.of(context).size.width*.95,
                    height: MediaQuery.of(context).size.height-265,
                    decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius:
                            BorderRadius.only(
                                topLeft: Radius.circular(25),
                                bottomRight: Radius.circular(25),
                                bottomLeft: Radius.circular(25))),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0,right: 15,top: 15,bottom: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          texts(text: 'البداية', size: 40),
                          texts(
                              text: 'أدخل بداية الحصة', size: 22, clr: Colors.grey),
                          SizedBox(
                            height: 20,
                          ),
                          texts(text: 'إسم السورة', fw: FontWeight.bold, size: 20),

                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color:Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(.1),
                                  blurRadius: 2,
                                  offset: Offset(2, 2)
                                )
                              ]
                            ),

                            child: Directionality(
                              textDirection:  TextDirection.rtl,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20,),
                                child: DropdownButton(
                                  hint: soura == null
                                      ? Text('Select Strarting Soura')
                                      : Text(
                                    soura,
                                    style: TextStyle(fontSize: 22),
                                  ),
                                  isExpanded: true,
                                  iconSize: 30.0,
                                  borderRadius: BorderRadius.circular(25),
                                  icon: Icon(
                                    Icons.keyboard_arrow_down,
                                    color: Colors.black,
                                  ),
                                  items: Sorates.map(
                                        (val) {
                                      return DropdownMenuItem<String>(
                                        alignment: Alignment.centerRight,
                                        value: val,
                                        child: Text(val,style: TextStyle(fontSize: 22),),
                                      );
                                    },
                                  ).toList(),
                                  onChanged: (val) {
                                    setState(
                                          () {
                                        soura = val!;
                                      },
                                    );
                                  },
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 20,),
                          texts(text: 'رقم الآية', fw: FontWeight.bold, size: 20),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color:Colors.white,
                                boxShadow: [
                                BoxShadow(
                                color: Colors.black.withOpacity(.1),
                                  blurRadius: 2,
                                  offset: Offset(2, 2)
                              ),]
                            ),

                            child: Directionality(
                              textDirection:  TextDirection.rtl,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20,),
                                child: DropdownButton(
                                  hint: soura == null
                                      ? Text('Select Strarting Aya')
                                      : Text(
                                    Aya.toString(),
                                    style: TextStyle(fontSize: 22),
                                  ),
                                  isExpanded: true,
                                  iconSize: 30.0,
                                  borderRadius: BorderRadius.circular(25),
                                  menuMaxHeight: 300,
                                  dropdownColor: Colors.grey[200],
                                  icon: Icon(
                                    Icons.keyboard_arrow_down,
                                    color: Colors.black,
                                  ),
                                  items: Ayat.map(
                                        (val) {
                                      return DropdownMenuItem<int>(
                                        value: val,
                                        alignment: Alignment.centerRight,
                                        child: Text(val.toString(),style: TextStyle(fontSize: 22),),
                                      );
                                    },
                                  ).toList(),
                                  onChanged: (val) {
                                    setState(
                                          () {
                                        Aya = val!;
                                      },
                                    );
                                  },
                                ),
                              ),
                            ),
                          ),
                          Expanded(child: SizedBox()),
                          Padding(padding: EdgeInsets.all(15),
                          child: Center(
                            child: Container(
                              width: MediaQuery.of(context).size.width*.8,
                              height: 50,
                              decoration: BoxDecoration(
                                // color: Colors.orangeAccent,
                                  borderRadius: BorderRadius.circular(25),

                              ),
                              child: ElevatedButton(
                                child: texts(text: 'التالي',size: 25,fw: FontWeight.bold),
                                onPressed: ()=> {
                                  Get.to(EndingForm())
                                },
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all<Color>(Colors.orangeAccent),
                                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(25.0),
                                            side: BorderSide(color: Colors.orangeAccent)
                                        ),
                                    ),
                                ),
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

  void changeSoura(item) {
    setState(() {
      soura = item;
    });
  }
}
