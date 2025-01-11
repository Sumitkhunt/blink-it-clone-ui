import 'package:ebook_app/repository/Screens/cart/cartscreen.dart';
import 'package:ebook_app/repository/Screens/catagory/categoryscreen.dart';
import 'package:ebook_app/repository/Screens/home/homescreen.dart';
import 'package:ebook_app/repository/Screens/print/printscreen.dart';
import 'package:ebook_app/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class bottomnavbar extends StatefulWidget {
  const bottomnavbar({super.key});

  @override
  State<bottomnavbar> createState() => _bottomnavbarState();
}

class _bottomnavbarState extends State<bottomnavbar> {
  int currentindex = 0;
  List<Widget> page = [
    Homescreen(),
    Cartscreen(),
    Categoryscreen(),
    Printscreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentindex,
        children: page,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Uihelper.CustomImage(img: "home 1.png"), label: "home"),
          BottomNavigationBarItem(
              icon: Uihelper.CustomImage(img: "shopping-bag 1.png"),
              label: "cart"),
          BottomNavigationBarItem(
              icon: Uihelper.CustomImage(img: "category 1.png"),
              label: "category"),
          BottomNavigationBarItem(
              icon: Uihelper.CustomImage(img: "printer 1.png"), label: "print")
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: currentindex,
        onTap: (index) {
          setState(() {
            currentindex = index;
          });
        },
      ),
    );
  }
}
