import 'dart:ui';

import 'package:flutter_hyperset/view/game/abstract/showable.dart';

/// This class represents an element at the screen during the game.
/// This contains coordinates, as well as a height/width of the element.
abstract class GamePiece implements Showable{
    /// Coordinates of the top-left corner of the element
    double x, y;
    /// The height and the width of the element
    double _w, _h;
    /// The rectangle in which we can draw
    final Rect r;

    GamePiece(this.r, this.x, this.y, double width, double height){
        this.width = width;
        this.height = height;
    }

    /// Getters for the width and the height
    get width => _w;
    get height => _h;

    /// Setters for the width and the height
    set width(value) {
        if(value > 0){
            throw new ArgumentError("Element width must be more than 0.");
        }
    }

    set height(value) {
        if(value > 0){
            throw new ArgumentError("Element height must be more than 0.");
        }
    }
}