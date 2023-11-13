import 'package:book_hotel/features/second_screen/presentation/controller/cubit.dart';
import 'package:book_hotel/features/second_screen/presentation/controller/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PetFriendlyWidget extends StatelessWidget{
  const PetFriendlyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SecondScreenCubit,SecondScreenStates>(
      builder: (BuildContext context, state) {
        return  Container(
          height: 55.h,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            color: Colors.white,
          ),child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text("Pet-friendly",
                        style: TextStyle(fontSize: 12.sp,
                            fontWeight: FontWeight.w500),),
                      SizedBox(width: 5.w,),
                      Icon(Icons.info_outline)
                    ],
                  ),

                  Text('only show stays that allow pets',
                    style: TextStyle(fontSize: 10.sp,
                        fontWeight: FontWeight.w300),),
                ],
              ),
              Switch(value: SecondScreenCubit.get(context).isPetFriendly,
                  onChanged: (value){
                    SecondScreenCubit.get(context).changePetSwitch();
                  })
            ],

          ),
        ),
        );
      },

    );
  }

}