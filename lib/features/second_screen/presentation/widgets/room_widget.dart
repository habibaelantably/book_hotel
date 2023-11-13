import 'package:book_hotel/features/second_screen/presentation/controller/cubit.dart';
import 'package:book_hotel/features/second_screen/presentation/controller/states.dart';
import 'package:book_hotel/features/second_screen/presentation/widgets/plus_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/default_form_field.dart';
import 'minus_button.dart';

class RoomWidget extends StatelessWidget{
  const RoomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController ageController = TextEditingController();

    return BlocBuilder<SecondScreenCubit,SecondScreenStates>(
      builder: (BuildContext context, state) {
        return Container(
          width: double.infinity,
          decoration:
          BoxDecoration(
            borderRadius:
            BorderRadius
                .circular(
                8.r),
            color: Colors.white,
          ),
          child: Padding(
            padding: EdgeInsets
                .all(

                8.0.h),
            child: Column(
              crossAxisAlignment:
              CrossAxisAlignment
                  .start,
              children: [
                const Text("ROOM 1"),
                Row(
                  children: [
                    const Text(
                        'Adults'),
                    const Spacer(
                      flex: 1,
                    ),
                    MinusButton(
                        buttonIcon:
                        Icons
                            .minimize,
                        onPressed:
                            () {
                          SecondScreenCubit.get(context).minusAdultCounter();
                        }),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(SecondScreenCubit.get(context).adultsCounter.toString()),
                    SizedBox(
                      width: 10.w,
                    ),
                    PlusButton(
                      buttonIcon:
                      Icons
                          .add,
                      onPressed:
                          () {
                        SecondScreenCubit.get(context).addAdultCounter();
                      },
                    )
                  ],
                ),
                Row(
                  children: [
                    const Text('Children'),
                    const Spacer(
                      flex: 1,
                    ),
                    MinusButton(
                        buttonIcon:
                        Icons
                            .minimize,
                        onPressed:
                            () {
                          SecondScreenCubit.get(context).minusChildrenCounter();
                        }),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text( SecondScreenCubit.get(context).childrenCounter.toString()),
                    SizedBox(
                      width: 10.w,
                    ),
                    PlusButton(
                      buttonIcon:
                      Icons
                          .add,
                      onPressed:
                          () {
                        SecondScreenCubit.get(context).addChildrenCounter();
                      },
                    )
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.0.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: List.generate(
                      SecondScreenCubit.get(context).childrenCounter,
                          (index) {
                        TextEditingController ageController = TextEditingController();
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Age of Child ${index + 1}'),
                            Spacer(flex: 1),
                            SizedBox(
                              width: 100.w,
                              height: 40.h,
                              child: DefaultFormField(
                                controller: ageController,
                                maxLines: 1,
                                inputType: TextInputType.number,
                                hasBorder: false,
                                borderRadius: 0.0,
                                fillColor: Colors.white,
                                hintText: "14 years",
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ),

              ],
            ),
          ),
        );
      },

    ) ;
  }

}