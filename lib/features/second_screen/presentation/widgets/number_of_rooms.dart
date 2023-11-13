
import 'package:book_hotel/features/second_screen/presentation/controller/cubit.dart';
import 'package:book_hotel/features/second_screen/presentation/controller/states.dart';
import 'package:book_hotel/features/second_screen/presentation/widgets/plus_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'minus_button.dart';

class NumberOfRooms extends StatelessWidget{
  const NumberOfRooms({super.key});

  @override
  Widget build(BuildContext context) {
    return  BlocBuilder<SecondScreenCubit,SecondScreenStates>(
      builder: (BuildContext context, state) {
        return Container(
          height: 55.h,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            color: Colors.white,
          ),
          child: Padding(
            padding:   EdgeInsets.symmetric(horizontal: 8.0.h),
            child: Row(
              children: [
                const Text('Rooms'),
                const Spacer(flex: 1,),
                MinusButton(
                    buttonIcon: Icons.minimize,
                    onPressed: (){
                      SecondScreenCubit.get(context).minusRoomCounter();
                    }),
                SizedBox(width: 10.w,),
                Text(SecondScreenCubit.get(context).roomCounter.toString()),
                SizedBox(width: 10.w,),
                PlusButton(
                  buttonIcon: Icons.add,
                  onPressed: () {
                    SecondScreenCubit.get(context).addRoomCounter();
                  },)

              ],
            ),
          ),
        );
      },

    );
  }

}