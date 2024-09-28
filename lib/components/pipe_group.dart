import 'package:flame/components.dart';
import 'package:flutter_game_test/components/pipe.dart';
import 'package:flutter_game_test/game/pipe_position.dart';

class PipeGroup extends PositionComponent {
  PipeGroup();

  @override
  Future<void> onLoad() async {
    addAll([
      Pipe(height: 100, pipePosition: PipePosition.top),
      Pipe(height: 200, pipePosition: PipePosition.bottom),
    ]);
  }

  @override
  void update(double dt) {
    super.update(dt);
  }
}
