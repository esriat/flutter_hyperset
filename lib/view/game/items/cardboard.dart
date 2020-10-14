import 'dart:ui';

import 'package:flutter_hyperset/view/game/abstract/gamepiece.dart';

/// This will hold the 12 cards
class CardBoard extends GamePiece{
    /// Private ctor with parent's
    CardBoard._(Rect r, double x, double y, double width, double height) : super(r, x, y, width, height);

    /// With a factory, so we can initialize the final variable (r) depending on what data we get
    factory CardBoard(double x, double y, double width, double height){
        return new CardBoard._(Rect.fromLTWH(x, y, width, height), x, y, width, height);
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