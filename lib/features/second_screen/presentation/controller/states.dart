class SecondScreenStates{}

class SecondScreenInitialState extends SecondScreenStates{}

class ChangePetSwitchState extends SecondScreenStates{}

class PlusRoomCounterState extends SecondScreenStates{
  late final int  counter;
  PlusRoomCounterState(this.counter);
}

class MinusRoomCounterState extends SecondScreenStates{
  late final int  counter;
  MinusRoomCounterState(this.counter);
}

class PlusAdultsCounterState extends SecondScreenStates{
  late final int  counter;
  PlusAdultsCounterState(this.counter);
}

class MinusAdultsCounterState extends SecondScreenStates{
  late final int  counter;
  MinusAdultsCounterState(this.counter);
}

class PlusChildrenCounterState extends SecondScreenStates{
  late final int  counter;
  PlusChildrenCounterState(this.counter);
}

class MinusChildrenCounterState extends SecondScreenStates{
  late final int  counter;
  MinusChildrenCounterState(this.counter);
}

