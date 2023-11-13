import 'package:book_hotel/features/second_screen/presentation/controller/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SecondScreenCubit extends Cubit<SecondScreenStates>{
  SecondScreenCubit() : super(SecondScreenInitialState());

  static SecondScreenCubit get(context) => BlocProvider.of(context);

  bool isPetFriendly=false;
  int roomCounter=1;
  int adultsCounter=1;
  int childrenCounter=0;


  void changePetSwitch(){
    isPetFriendly=!isPetFriendly;
    emit(ChangePetSwitchState());
  }

  void addRoomCounter()
  {
    roomCounter++;
    emit(PlusRoomCounterState(roomCounter));
  }

  void minusRoomCounter()
  {
    if(roomCounter != 1) {
      roomCounter--;
      emit(MinusRoomCounterState(roomCounter));
    }

  }
  void addAdultCounter()
  {
    adultsCounter++;
    emit(PlusAdultsCounterState(adultsCounter));
  }
  void minusAdultCounter()
  {
    if(adultsCounter != 1) {
      adultsCounter--;
      emit(MinusAdultsCounterState(adultsCounter));
    }
  }
  void addChildrenCounter()
  {
    childrenCounter++;
    emit(PlusChildrenCounterState(childrenCounter));
  }
  void minusChildrenCounter()
  {
    if(childrenCounter != 0) {
      childrenCounter--;
      emit(MinusChildrenCounterState(childrenCounter));
    }
  }

}