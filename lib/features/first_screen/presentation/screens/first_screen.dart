import 'package:book_hotel/core/utils/assets_manager.dart';
import 'package:book_hotel/features/first_screen/presentation/controller/cubit.dart';
import 'package:book_hotel/features/second_screen/presentation/controller/cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../widgets/booking_container.dart';
import '../widgets/hotels_search_container.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AssetsManager.backgroundImage),
                fit: BoxFit.fill,
              )),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Stack(
                children: [
                  CustomPaint(
                    size: Size(
                        345,
                        (400 * 0.625)
                            .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                    painter: RPSCustomPainter(),
                  ),
                  const Positioned(
                      right: 10,
                      left: 10,
                      top: 215,
                      child: Text("Hotels search",
                        style: TextStyle(color:Colors.white),))
                ],
              ),
              const SizedBox(height: 5,),
              const BookingContainer(),
            ],
          ),
        ),
      ),
    );
  }
}
