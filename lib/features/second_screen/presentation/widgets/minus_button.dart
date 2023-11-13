import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MinusButton extends StatelessWidget{
  const MinusButton({super.key,required this.buttonIcon,required this.onPressed});
  final IconData buttonIcon;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: 40.w,
      child: OutlinedButton(
          onPressed: onPressed,
          style: OutlinedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  side: const BorderSide(color: Colors.blue),
                  borderRadius: BorderRadius.circular(20.r))
          ),
          child:FittedBox(child: Padding(
            padding:  EdgeInsets.only(bottom: 9.0.h),
            child: Icon(buttonIcon),
          ))),
    );
  }

}