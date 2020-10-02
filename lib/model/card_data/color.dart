import "dart:core";

/// This class represents the data about the colors of the cards.
class Color {
  /// These 3 attributes represent the three colors : red, green, blue.
  /// We don't care about the alpha variable.
  int _r;
  int _g;
  int _b;
  
  /// These 2 attributes will be used to make sure that each color has a value between 0 and 255.
  static final _upperBound = 255;
  static final _lowerBound = 0;
  static final _argumentErrorMessage = "Colors' attributes must be between $_lowerBound and $_upperBound";
  
  /// The Color constructor takes all 3 colors as a parameter.
  Color(int red, int green, int blue){
	this.red = red;
	this.green = green;
	this.blue = blue;
  }
  
  // Setters and getters of all colors.

  /// _r getter
  get red => _r;
  /// _r setter
  set red(value){
	if (value < _lowerBound || value > _upperBound){
	  throw new ArgumentError(_argumentErrorMessage);
	}
	_r = value;
  }
  
  /// _g getter
  get green => _g;
  /// _g setter
  set green(value){
	if (value < _lowerBound || value > _upperBound){
	  throw new ArgumentError(_argumentErrorMessage);
	}
	_g = value;
  }
  
  /// _b getter
  get blue => _b;
  /// _b setter
  set blue(value){
	if (value < _lowerBound || value > _upperBound){
	  throw new ArgumentError(_argumentErrorMessage);
	}
	_b = value;
  }
}