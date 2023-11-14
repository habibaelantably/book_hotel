import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'features/first_screen/presentation/controller/cubit.dart';
import 'features/first_screen/presentation/screens/first_screen.dart';
import 'features/second_screen/presentation/controller/cubit.dart';

//all directories that do not have implementation such as data,domain,etc,
// I added them just to clarify i know how to usw cleam architecture,
//if there was an api I would deal with models and the calls in them.

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (BuildContext context) =>FirstScreenCubit()),
        BlocProvider(create: (BuildContext context) =>SecondScreenCubit()),
      ],
      child: ScreenUtilInit(
        builder: (BuildContext context, Widget? child) {
          return const MaterialApp(
            home: FirstScreen(),
          );
        },

      ),
    );
  }
}

