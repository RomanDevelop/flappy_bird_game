import 'package:flame/game.dart';
import 'package:flame/timer.dart';
import 'package:flutter_game_test/components/background.dart';
import 'package:flutter_game_test/components/bird.dart';
import 'package:flutter_game_test/components/ground.dart';
import 'package:flutter_game_test/components/pipe_group.dart';
import 'package:flutter_game_test/game/configuration.dart';

class FlappyBirdGame extends FlameGame {
  FlappyBirdGame();

  late Bird bird;
  Timer interval = Timer(Config.pipeInterval, repeat: true);

  @override
  Future<void> onLoad() async {
    addAll([
      Background(),
      Ground(),
      bird = Bird(),
    ]);

    interval.onTick = () => add(PipeGroup());
  }

  @override
  void update(double dt) {
    super.update(dt);
    interval.update(dt);
  }
}
