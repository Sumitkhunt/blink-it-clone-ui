import 'package:flutter/material.dart';

class Uihelper {
  static CustomImage({required String img}) {
    return Image.asset("assets/images/$img");
  }

  static CustomText(
      {required String text,
      required Color color,
      required FontWeight fontweight,
      String? fontfamily,
      required double fontsize}) {
    return Text(
      text,
      style: TextStyle(
          fontSize: fontsize,
          fontFamily: fontfamily ?? "regular",
          color: color,
          fontWeight: fontweight),
    );
  }

  static CustomTextfield({required TextEditingController controller}) {
    return Container(
      height: 37,
      width: 346,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        border: Border.all(
          color: Colors.grey,
        ),
      ),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
            hintText: 'Search “ice-cream”',
            prefixIcon: Icon(
              Icons.search,
              color: Colors.black,
            ),
            suffixIcon: Icon(
              Icons.mic,
              color: Colors.black,
            ),
            border: InputBorder.none),
      ),
    );
  }
}
