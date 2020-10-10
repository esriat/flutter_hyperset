import 'package:flutter_hyperset/model/card_data/card.dart';
import 'package:flutter_hyperset/view/game/gamepiece.dart';

/// This represents the View of a Card
class CardView extends GamePiece{
    /// This is the card that the CardView will represent.
    Card card;

    /// Ctor taking a Card and coordinates/lengths as parameter.
    CardView(this.card, double x, double y, double width, double height): super(x, y, width, height);
}