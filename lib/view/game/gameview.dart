import 'dart:ui';

import 'package:flutter_hyperset/view/game/abstract/gamepiece.dart';
import 'package:flutter_hyperset/view/game/abstract/showable.dart';

/// This class represents the game view. That means that, when the game will be running, this will be shown
class GameView implements Showable{
    /// This list reprensents all elements that will be shown on thescreen
    List<GamePiece> pieces;
    double width, height;

    @override
    void render(Canvas c) {
        // TODO: implement render
    }

    @override
    void update(double t) {
        // TODO: implement update
    }
}