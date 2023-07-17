import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Function()? onTap;
  final String text;
  final double? width;
  const MyButton({super.key, this.onTap, required this.text, this.width});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width??double.maxFinite,
        padding: EdgeInsets.all(18),
        margin: EdgeInsets.all(24),
        decoration: BoxDecoration(
            color: Colors.blueGrey.shade900,
        borderRadius: BorderRadius.circular(10)),
        child: Center(
            child: Text(
          text,
          style: TextStyle(color: Colors.blueGrey.shade50, fontWeight: FontWeight.bold, fontSize: 24),
        )),
      ),
    );
  }
}
