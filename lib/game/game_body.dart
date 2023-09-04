import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rsp_game_getx/game/controller/input_controller.dart';
import 'package:rsp_game_getx/game/widget/cpu_input.dart';
import 'package:rsp_game_getx/game/widget/game_result.dart';
import 'package:rsp_game_getx/game/widget/user_input.dart';

class GameBody extends GetView<InputController> {
  const GameBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() => Column(
          children: [
            Expanded(
                child: CpuInput(
              isDone: controller.isDone.value,
              cpuInput: controller.cpuInput,
            )),
            Expanded(
                child: GameResult(
              isDone: controller.isDone.value,
              callback: controller.reset,
              result: controller.result(),
            )),
            Expanded(
                child: UserInput(
              isDone: controller.isDone.value,
              userInput: controller.userInput,
              callback: controller.getUserInput,
            )),
          ],
        ));
  }
}
