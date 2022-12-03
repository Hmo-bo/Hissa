import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../HomePage.dart';
Widget texts({required String text,Color ? clr,double? size,FontWeight?fw}){
  return Text(
    text,
    style: TextStyle(
      color: clr,
      fontSize: size??20,
      fontWeight: fw
    ),
  );
}

List Sorates=['الفاتحة','اليقرة','آل عمران'];
List Ayat= [for (var i = 1; i <= 200; i++) i];

Drawer AppDrawer(){
  return Drawer(
    backgroundColor: Colors.white,
    // width: MediaQuery.of(context).size.width*.8,
    child: Container(
      height: double.infinity,
      child: Stack(
          children:[ Column(
            children: [
              DrawerHeader(
                  padding: EdgeInsets.zero,
                  child: Container(
                    color: Colors.orangeAccent,
                    width: double.infinity,
                    child: Center(
                      child: SvgPicture.asset(
                        'lib/assets/book.svg',
                        color: Colors.white,
                        height: 100,
                        width: 100,
                      ),
                    ),
                  )),
              Card(
                child: ListTile(
                  tileColor: Colors.white,
                  trailing: Icon(
                    Icons.person,
                    color: Colors.black,
                    size: 30,
                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      texts(text: 'الرئيسية',fw: FontWeight.bold),
                    ],
                  ),
                  onTap: () => Get.to(homePage()),
                ),
              ),
              Card(
                child: ListTile(
                  tileColor: Colors.white,
                  trailing: Icon(
                    Icons.design_services_outlined,
                    color: Colors.black,
                    size: 30,
                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      texts(text: 'خدمات أخرى',fw: FontWeight.bold),
                    ],
                  ),
                  onTap: () => {},
                ),
              ),
              Expanded(child: SizedBox(),),
              Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Container(
                    height: 78,
                    child: Column(
                      children: [
                        texts(text: 'Society Brand',fw: FontWeight.bold,size: 25),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(MdiIcons.facebook,color: CupertinoColors.activeBlue,size: 45,),
                            SizedBox(width: 20,),
                            Icon(MdiIcons.whatsapp,color:CupertinoColors.activeGreen ,size: 45,),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),


            ],
          ),

          ]
      ),
    ),
  );
}

// -----------------
class dropdown extends StatefulWidget {
  const dropdown({Key? key}) : super(key: key);

  @override
  State<dropdown> createState() => _dropdownState();
}

class _dropdownState extends State<dropdown> {
  static String _dropDownValue='Fatiha';
  List items=Sorates;//['Fatiha', 'Two', 'Three'];
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      hint: _dropDownValue == null
          ? Text('Dropdown')
          : Text(
        _dropDownValue,
        style: TextStyle(color: Colors.blue),
      ),
      isExpanded: true,
      iconSize: 30.0,
      style: TextStyle(color: Colors.blue),
      items: Sorates.map(
            (val) {
          return DropdownMenuItem<String>(
            value: val,
            child: Text(val),
          );
        },
      ).toList(),
      onChanged: (val) {
        setState(
              () {
            _dropDownValue = val!;
          },
        );
      },
    );
  }
}


