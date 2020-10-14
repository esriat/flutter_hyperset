import "dart:ui";

import 'package:flutter_hyperset/view/game/gamepiece.dart';

/// This represents the top line with the score written on it
class ScoreBoard extends GamePiece{
    /// Private ctor with parent's
    ScoreBoard._(Rect r, double x, double y, double width, double height) : super(r, x, y, width, height);

    /// With a factory, so we can initialize the final variable (r) depending on what data we get
    factory ScoreBoard(double x, double y, double width, double height){
        return new ScoreBoard._(Rect.fromLTWH(x, y, width, height), x, y, width, height);
    }

    @override
    void render(Canvas c) {
        // TODO: implement render
    }

    @override
    void update(double t) {
        // TODO: implement update
    }
}