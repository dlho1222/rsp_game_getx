import 'package:get/get.dart';
import 'package:rsp_game_getx/game/controller/input_controller.dart';

class InitBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(InputController(), permanent: true);
  }
}
