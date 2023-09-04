import 'dart:math';

import 'package:get/get.dart';
import 'package:rsp_game_getx/game/enum.dart';

class InputController extends GetxController {
  RxBool isDone = false.obs;
  InputType? userInput;
  late InputType cpuInput;
  void getUserInput(InputType getUserInput) {
    isDone(true);
    userInput = getUserInput;
  }

  @override
  void onInit() {
    super.onInit();
    setCpuInput();
  }

  void setCpuInput() {
    Random random = Random();
    cpuInput = InputType.values[random.nextInt(3)];
  }

  void reset() {
    isDone(false);
    setCpuInput();
  }

  Result? result() {
    if (userInput == null) return null;
    switch (userInput!) {
      case InputType.rock:
        switch (cpuInput) {
          case InputType.rock:
            return Result.draw;
          case InputType.scissors:
            return Result.playerWin;
          case InputType.paper:
            return Result.cpuWin;
        }
      case InputType.scissors:
        switch (cpuInput) {
          case InputType.rock:
            return Result.cpuWin;
          case InputType.scissors:
            return Result.draw;
          case InputType.paper:
            return Result.playerWin;
        }
      case InputType.paper:
        switch (cpuInput) {
          case InputType.rock:
            return Result.playerWin;
          case InputType.scissors:
            return Result.cpuWin;
          case InputType.paper:
            return Result.draw;
        }
    }
  }
}
