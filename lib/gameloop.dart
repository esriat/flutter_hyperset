import 'dart:ui';
import 'package:flame/game.dart';

import 'package:flutter_hyperset/view/game/gameview.dart';

class GameLoop extends Game {
    /// The gameview, cuz we need to show the game
    GameView gameView;

    /// Ctor
    GameLoop(){
        gameView = new GameView();
    }

    /// Overriding game methods
    @override
    void render(Canvas canvas) {
        gameView.render(canvas);
    }

    @override
    void update(double t) {
        gameView.update(t);
    }
}