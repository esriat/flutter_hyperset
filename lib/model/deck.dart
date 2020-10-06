import 'dart:core';

import 'package:flutter_hyperset/model/card_data/card.dart';
import 'package:flutter_hyperset/model/card_data/filling.dart';
import 'package:flutter_hyperset/model/card_data/shape.dart';
import 'package:flutter_hyperset/model/card_data/colors.dart';

/// A deck contains a list of cards.
class Deck {
	List<Card> deck = new List();
	
	/// This constructor takes a boolean as a parameter. If its value is true, we initialize the deck with all possible cards.
	Deck.full(){
		Shape.values.forEach((shape) {
			Colors.getColors().forEach((color) {
				for(int number = Card.minimumNumberOfSymbols; number <= Card.maximumNumberOfSymbols; number++){
					Filling.values.forEach((filling) {
						deck.add(new Card(shape, number, color, filling));
					});
				}
			});
		});
	}

	/// This constructor creates an empty Decl
	Deck.empty();

	/// This constructor takes a list of cards as a parameter.
	Deck.fromList(this.deck);

	/// Defining the [] operator so we can call deck[0] and get the first card
	Card operator [](int i) => deck[i];

	int get length => deck.length;
	
	/// Adding a card to the deck
	void addCard(Card card) => deck.add(card);
	
	/// Removing a card from the deck
	void removeCard(Card card) => deck.remove(card);
	
	/// Shuffling the deck
	void shuffle() => deck.shuffle();
	
	/// Getting a slice of cards
	List<Card> getCards(int numberOfCards){
		if (deck.length < numberOfCards){
			throw new Exception("Not enough cards");
		}
		
		List<Card> toReturn = new List();
		for(int i = 0; i < numberOfCards; i++){
			toReturn.add(deck.last);
			deck.removeLast();
		}
		return toReturn;
	}
}