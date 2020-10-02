import 'package:flutter_hyperset/model/card_data/color.dart';

/// The goal of this class is to group all 3 colors here.
/// We could use "brute" colors in the card of deck classes, but I'm planning a feature
/// that allows to modify and save the colors.
class Colors{
	static Color color1 = new Color(255, 0, 0);
	static Color color2 = new Color(0, 255, 0);
	static Color color3 = new Color(0, 0, 255);

	/// This method just returns the list of colors. Allows foreach on all colors.
	static List<Color> getColors() => [color1, color2, color3];
}