import "dart:ui";

/// The methods here are the 2 methods we have to override when extending the Game class from the flame package.
/// We don't want everything to extend/implement the game class, as we'll have a bunch of useless data. 
/// We only need those 2 methods, so we create an interface with the 2 of them.
abstract class Showable{
    /// Method used to show the item
    /// The Canvas represents the screen, the surface on which we can paint
    void render(Canvas c);

    /// Method used to update the item
    /// The double t given as a parameter represents a time. Using it when animating thing will
    /// make the animations smoother (if I ever make animations here)
    void update(double t);
}