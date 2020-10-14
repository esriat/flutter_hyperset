import 'dart:ui';

import 'package:flutter_hyperset/view/game/gamepiece.dart';

/// This will hold the 12 cards
class BottomBer extends GamePiece{
    /// Private ctor with parent's
    BottomBer._(Rect r, double x, double y, double width, double height) : super(r, x, y, width, height);

    /// With a factory, so we can initialize the final variable (r) depending on what data we get
    factory BottomBer(double x, double y, double width, double height){
        return new BottomBer._(Rect.fromLTWH(x, y, width, height), x, y, width, height);
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