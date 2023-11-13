import 'package:book_hotel/features/first_screen/presentation/controller/cubit.dart';
import 'package:book_hotel/features/first_screen/presentation/controller/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/default_form_field.dart';
import '../../../second_screen/presentation/screens/bottom_sheet_screen.dart';


class BookingContainer extends StatelessWidget {
  const BookingContainer({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController cityController = TextEditingController();
    return Padding(
      padding: const EdgeInsets.only(left: 12.0, right: 12.0, bottom: 10.0),
      child: Stack(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 30.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.orangeAccent,
              ),
              height: MediaQuery.of(context).size.height / 2.3,
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          "find hotels",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.search,
                          size: 45,
                          color: Colors.white,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 30.0),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Colors.blue[900]!,
                      Colors.blue[500]!,
                      Colors.blue[300]!
                    ],
                  )),
              height: MediaQuery.of(context).size.height / 2.7,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: BlocBuilder<FirstScreenCubit, FirstScreenStates>(
                  builder: (BuildContext context, state) {
                    return Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30.r)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: DefaultFormField(
                              controller: cityController,
                              maxLines: 1,
                              inputType: TextInputType.text,
                              hasBorder: true,
                              borderRadius: 25.r,
                              borderColor: Colors.blue,
                              hintText: "Select City",
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        SizedBox(height: 8.h),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20.r)),
                          child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 60,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 1,
                                      color: Colors.blue,
                                    ),
                                    borderRadius: BorderRadius.circular(15.r)),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0),
                                  child: Row(
                                    children: const [
                                      Text("22-11-2023"),
                                      Text("==>"),
                                      Text("24-11-2023"),
                                      Spacer(
                                        flex: 1,
                                      ),
                                      Icon(Icons.cancel_outlined)
                                    ],
                                  ),
                                ),
                              )),
                        ),
                        SizedBox(height: 8.h),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height / 13,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20.r)),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.h),
                            child: Center(
                              child: DropdownButton<String>(
                                isExpanded: true,
                                underline: Container(),
                                icon:
                                    const Icon(Icons.keyboard_arrow_down_sharp),
                                value: FirstScreenCubit.get(context)
                                    .selectedDropDownValue,
                                items: <String>[
                                  'Dog',
                                  'Cat',
                                  'Tiger',
                                  'Lion'
                                ].map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(
                                      value,
                                      style: const TextStyle(fontSize: 15),
                                    ),
                                  );
                                }).toList(),
                                hint: Text("Select Nationality",
                                    style: TextStyle(color: Colors.blue[600])),
                                onChanged: (String? newValue) {
                                  FirstScreenCubit.get(context)
                                      .changeDropDownValue(newValue);
                                },
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height / 14,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20.r)),
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: InkWell(
                              onTap: () {
                                showModalBottomSheet(
                                    context: context,
                                    isScrollControlled: true,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(25.r),
                                        topLeft: Radius.circular(25.r),
                                      ),
                                    ),
                                    backgroundColor: Colors.grey[300],
                                    builder: (_) => const BottomSheetContent());
                              },
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text("1 room, 2 Adults, 0 children"),
                                  Icon(
                                    Icons.keyboard_arrow_down,
                                    color: Colors.grey[600],
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    );
                  },
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
