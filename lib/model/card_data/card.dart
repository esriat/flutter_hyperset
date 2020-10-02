import 'package:flutter_hyperset/model/card_data/color.dart';
import 'package:flutter_hyperset/model/card_data/shape.dart';

/// This card represents a card and all its data.
/// It is not able to show a card on the screen. It is just the "logic" data of the card.
class Card {
	/// Each card shows symbols that are identified by 4 criteria :
	/// - The shape of the symbols,
	/// - The number of symbols,
	/// - The color of the symbols,
	/// - The filling of the symbols.
	Shape shape;
	int _numberOfSymbols;
	Color color;
	bool isFilled;
	
	/// Some static data
	static final minimumNumberOfSymbols = 1;
	static final maximumNumberOfSymbols = 3;
	
	/// The Card constructor takes all attributes as parameters.
	Card(this.shape, int numberOfSymbols, this.color, this.isFilled){
		this.numberOfSymbols = numberOfSymbols;
	}
	
	/// _numberOfSymbols getter
	get numberOfSymbols => _numberOfSymbols;
	/// _numberOfSymbols setter
	set numberOfSymbols(value){
		if (value < minimumNumberOfSymbols || value > maximumNumberOfSymbols){
			throw new ArgumentError("The number of symbols must be between $minimumNumberOfSymbols and $maximumNumberOfSymbols");
		}
		
		_numberOfSymbols = value;
	}
}