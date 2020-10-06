import 'package:flutter_hyperset/model/deck.dart';
import 'package:flutter_hyperset/model/card_data/card.dart';

/// An inspector is a class used to calculate answers in a given deck. 
/// This is abstract, so we will need a SetInspector for the SET gamemode, and HypersetInspector for the HyperSET gamemmode.
abstract class Inspector {
    /// This represents the number of cards in an answer.
    /// Both types of inspectorss won't calculate the same thing, so we need to save a number of cards
    int _numberOfCardsInAnswer;

    /// numberOfCardsInAnswer getter
    get numberOfCardsInAnswer => numberOfCardsInAnswer;
    /// numberOfCardsInAnswer setter
    set numberOfCardsInAnswer(value){
		if (value < 0){
			throw new ArgumentError("The number of cards in an answer must be positive");
		}

		_numberOfCardsInAnswer = value;
	}

    /// Method used to know if an answer is correct or not
    bool isCorrect(Deck answer){
        if(answer.length != numberOfCardsInAnswer) {
            throw new ArgumentError("An answer must have exactly $numberOfCardsInAnswer cards.");
        }

        return checkShape(answer) && checkFilling(answer) && checkColor(answer) && checkNumber(answer);
    }
    bool checkShape(Deck answer);
    bool checkFilling(Deck answer);
    bool checkColor(Deck answer);
    bool checkNumber(Deck answer);

    /// This method is used to get the number of answers in a given deck of cards
    int numberInDeck(Deck deck){
         if(deck.length < numberOfCardsInAnswer){
            throw new ArgumentError("A deck must have at least $numberOfCardsInAnswer to have a answers.");
        }
        return 0;
    }

    /// This method is used to get an answer in a given list
    List<Card> getAnswer(Deck deck){
        if(deck.length < numberOfCardsInAnswer){
            throw new ArgumentError("A deck must have at least $numberOfCardsInAnswer to have a valid answer.");
        }
        return null;
    }
}