import 'package:book_hotel/features/second_screen/presentation/controller/cubit.dart';
import 'package:book_hotel/features/second_screen/presentation/controller/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/number_of_rooms.dart';
import '../widgets/pet_friendly_widget.dart';
import '../widgets/room_widget.dart';

class BottomSheetContent extends StatelessWidget{
  const BottomSheetContent({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SecondScreenCubit,SecondScreenStates>(
      builder: (BuildContext context, state) {
        return FractionallySizedBox(
          heightFactor: 0.9,
          child: Container(
            constraints: BoxConstraints(
              minHeight: MediaQuery.of(context)
                  .size
                  .height *
                  0.9,
              maxHeight: MediaQuery.of(context)
                  .size
                  .height *
                  0.9,
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 45.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color:
                            Colors.grey[300]!,
                            blurRadius: 5,
                            offset: const Offset(
                                4,
                                8), // Shadow position
                          ),
                        ],
                        borderRadius:
                        BorderRadius.only(
                            topLeft: Radius
                                .circular(
                                20.r),
                            topRight: Radius
                                .circular(
                                20.r))),
                    child: Padding(
                      padding: EdgeInsets.only(
                          right: 8.0.h,
                          left: 100.h),
                      child: Row(
                        children: [
                          const Text(
                              "Rooms and Guestes"),
                          SizedBox(width: 75.w),
                          InkWell(
                            onTap: (){
                              Navigator.pop(context);
                            },
                            child: const Icon(Icons
                                .cancel_outlined),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 10.0.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const NumberOfRooms(),
                        SizedBox(height: 20.h,),
                        const RoomWidget(),
                        const SizedBox(height: 20,),
                        const PetFriendlyWidget(),
                        SizedBox(height: 120.h,),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width:300.w, // Set your desired width
                                child: ElevatedButton(
                                  onPressed: () {

                                    Navigator.pop(context);
                                  },
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5.0), // Adjust the value to control roundness
                                    ),
                                  ),
                                  child: const Text("APPLY"),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },

    );
  }

}