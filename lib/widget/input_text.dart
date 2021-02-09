import 'package:flutter/material.dart';

class InputText extends StatelessWidget {
  final hintText;
  final Icon icon;
  final Color hintColor;
  final Color borderColor;
  final int maxLines;
  final String initialValue;

  InputText({
    this.hintText,
    this.icon,
    this.hintColor,
    this.borderColor,
    this.maxLines = 1,
    this.initialValue,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 10,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 5,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: borderColor ?? Colors.blueAccent,
        ),
        borderRadius: BorderRadius.circular(5),
      ),
      child: TextFormField(
        initialValue: this.initialValue,
        maxLines: this.maxLines,
        decoration: InputDecoration(
          hintText: this.hintText,
          hintStyle: TextStyle(
            color: hintColor,
          ),
          border: InputBorder.none,
          icon: this.icon,
        ),
        validator: (value) {
          if (value.isEmpty) {
            return "Silahkan masukkan inputan terlebih dahulu";
          }
          return null;
        },
      ),
    );
  }
}
