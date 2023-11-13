import 'package:book_hotel/features/first_screen/presentation/controller/state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FirstScreenCubit extends Cubit<FirstScreenStates>{
  FirstScreenCubit() : super(FirstScreenInitialState());

  static FirstScreenCubit get(context) => BlocProvider.of(context);

   String? selectedDropDownValue;

  void changeDropDownValue(String? newValue){
    selectedDropDownValue=newValue;
    emit(ChangeDropDownValueState());
  }

}