import'package:flutter/material.dart';
class Category extends StatelessWidget {
   Category({this.text,this.color,this.onTap});
   String? text;
   Color?color;
   Function()?onTap;
  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.only(left: 20),
        alignment: Alignment.centerLeft,
        width: double.infinity,
        height: 60,
        color: color,
        child: Text(
          text!,
          style: const TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),),
      ),
    );
  }
}