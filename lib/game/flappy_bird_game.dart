import 'package:flame/game.dart';
import 'package:flutter_game_test/components/background.dart';
import 'package:flutter_game_test/components/bird.dart';
import 'package:flutter_game_test/components/ground.dart';
import 'package:flutter_game_test/components/pipe_group.dart';

class FlappyBirdGame extends FlameGame {
  late Bird bird;
  @override
  Future<void> onLoad() async {
    addAll([
      Background(),
      Ground(),
      bird = Bird(),
      PipeGroup(),
    ]);
  }
}
