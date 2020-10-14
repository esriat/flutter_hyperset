import "dart:ui";

import 'package:flutter_hyperset/model/card_data/card.dart';
import 'package:flutter_hyperset/view/game/abstract/gamepiece.dart';

/// This represents the View of a Card
class CardView extends GamePiece{
    /// This is the card that the CardView will represent.
    Card card;

    /// Private ctor with parent's
    CardView._(Rect r, double x, double y, double width, double height) : super(r, x, y, width, height);

    /// With a factory, so we can initialize the final variable (r) depending on what data we get
    factory CardView(double x, double y, double width, double height){
        return new CardView._(Rect.fromLTWH(x, y, width, height), x, y, width, height);
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