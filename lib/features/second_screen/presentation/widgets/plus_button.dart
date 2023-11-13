import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PlusButton extends StatelessWidget{
  const PlusButton({super.key,required this.buttonIcon,required this.onPressed,
    required this.isButtonEnabled});
  final IconData buttonIcon;
  final void Function() onPressed;
  final bool isButtonEnabled;

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: 40.w,
      child: OutlinedButton(

          onPressed:  isButtonEnabled ? onPressed : null,
          style: OutlinedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  side: const BorderSide(color: Colors.blue),
                  borderRadius: BorderRadius.circular(20.r)),
          ),
          child:FittedBox(child: Icon(buttonIcon))),
    );
  }

}