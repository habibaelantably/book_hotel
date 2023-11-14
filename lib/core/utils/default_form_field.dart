import 'package:flutter/material.dart';

class DefaultFormField extends StatelessWidget {


  final TextEditingController controller;

  final String? validateText;

  final bool isPassword;

  final double? borderRadius;

  final TextInputType inputType;

  final String? hintText;
  final TextAlign textAlign;
  final Color? borderColor;
  final int? maxLines;
  final Color? fillColor;
  final double? width;
  final double? height;
  final Color? hintTextColor;

  final Function()? onTap;
  final void Function(String)? onChanged;
  final bool hasBorder;



  const DefaultFormField({
    Key? key,
    this.borderRadius,
    this.borderColor=Colors.blueAccent,
    required this.controller,
    this.validateText,
    required this.maxLines,
    this.onTap,
    this.onChanged,
    this.isPassword = false,
    required this.inputType,
    this.hintText,
    this.textAlign = TextAlign.start,
    this.fillColor,
    this.width,
    this.height,
    this.hintTextColor,
    required this.hasBorder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLines,
      onChanged: onChanged,
      controller: controller,
      validator: (value) {
        if (value!.isEmpty) {
          return validateText;
        }
        return null;
      },
      obscureText: isPassword,
      keyboardType: inputType,
      textAlign: textAlign,
      onTap: onTap ?? (){},
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.only(left: 8.0),
        hintText: hintText ,
        labelStyle:
        const TextStyle(color: Colors.grey),
        hintStyle: TextStyle(color: hintTextColor),
        enabledBorder:    hasBorder?OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius!),
          borderSide:  BorderSide(
            color: Colors.blueAccent,
            width: 0.8,
          ),
        ) :InputBorder.none,
        errorBorder: hasBorder?OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius!),
          borderSide:  BorderSide(
            color: Colors.blueAccent,
            width: 0.8,
          ),
        ) :InputBorder.none,
        focusedBorder:   hasBorder?OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius!),
          borderSide:  BorderSide(
            color: Colors.blueAccent,
            width: 0.8,
          ),
        ) :InputBorder.none,
        focusedErrorBorder:hasBorder?OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius!),
          borderSide:  BorderSide(
            color: Colors.blueAccent,
            width: 0.8,
          ),
        ) :InputBorder.none,
        errorStyle: const TextStyle(
            color: Colors.red
        ),
        fillColor:fillColor,
        filled: true,
      ),
      cursorColor: Colors.blue,
      style: const TextStyle(color: Colors.black),
    );
  }
}
