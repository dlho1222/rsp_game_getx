import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rsp_game_getx/game/bindings/init_binidngs.dart';
import 'package:rsp_game_getx/game/game_body.dart';

void main() {
  runApp(const RSPApp());
}

class RSPApp extends StatelessWidget {
  const RSPApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('가위! 바위! 보!'),
          elevation: 0,
        ),
        body: const GameBody(),
      ),
      initialBinding: InitBindings(),
    );
  }
}
