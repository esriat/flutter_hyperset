import "dart:ui";

abstract class Showable{
    /// Method used to show the item
    /// The Canvas represents the screen, the surface on which we can paint
    void render(Canvas c);

    /// Method used to update the item
    /// The double t given as a parameter represents a time. Using it when animating thing will
    /// make the animations smoother (if I ever make animations here)
    void update(double t);
}