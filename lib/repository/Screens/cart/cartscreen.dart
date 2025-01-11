import 'package:ebook_app/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class Cartscreen extends StatefulWidget {
  const Cartscreen({super.key});

  @override
  State<Cartscreen> createState() => _CartscreenState();
}

class _CartscreenState extends State<Cartscreen> {
  TextEditingController searchcontroler = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 35,
          ),
          Stack(
            children: [
              Container(
                height: 160,
                width: double.infinity,
                color: Color(0XFFF7CB45),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Uihelper.CustomText(
                            text: "Blink it",
                            color: Color(0XFF000000),
                            fontweight: FontWeight.bold,
                            fontsize: 14),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Uihelper.CustomText(
                            text: "16 Minutes",
                            color: Color(0XFF000000),
                            fontweight: FontWeight.bold,
                            fontsize: 16),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Uihelper.CustomText(
                            text: "HOME -",
                            color: Color(0XFF000000),
                            fontweight: FontWeight.bold,
                            fontsize: 14),
                        Uihelper.CustomText(
                            text: "Sujal Dave, Ratanada, Jodhpur (Raj)",
                            color: Color(0XFF000000),
                            fontweight: FontWeight.bold,
                            fontsize: 14),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                right: 20,
                top: 20,
                child: CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.person,
                    color: Colors.black,
                  ),
                ),
              ),
              Positioned(
                left: 30,
                top: 100,
                child: Container(
                  child: Uihelper.CustomTextfield(controller: searchcontroler),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Uihelper.CustomImage(img: "shopping-cart (1) 1.png"),
          SizedBox(
            height: 10,
          ),
          Uihelper.CustomText(
              text: "Reordering will be easy",
              color: Colors.black,
              fontweight: FontWeight.w700,
              fontsize: 20),
          Uihelper.CustomText(
              text: "Items you order will show up here so you can buy",
              color: Colors.black,
              fontweight: FontWeight.w500,
              fontsize: 12),
          Uihelper.CustomText(
              text: "them again easily.",
              color: Colors.black,
              fontweight: FontWeight.w500,
              fontsize: 12),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Uihelper.CustomText(
                  text: "Bestsellers",
                  color: Colors.black,
                  fontweight: FontWeight.w600,
                  fontsize: 20)
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [],
          ),
        ],
      ),
    );
  }
}
