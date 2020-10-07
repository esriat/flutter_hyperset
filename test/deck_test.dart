import 'package:test/test.dart';

import 'package:flutter_hyperset/model/deck.dart';
import 'package:flutter_hyperset/model/card_data/card.dart';
import 'package:flutter_hyperset/model/card_data/color.dart';
import 'package:flutter_hyperset/model/card_data/colors.dart';
import 'package:flutter_hyperset/model/card_data/filling.dart';
import 'package:flutter_hyperset/model/card_data/shape.dart';

void main() {
	/// Testing the Deck class
	group("Deck", (){
		// Testing empty deck creation
		test("Creating an empty deck", (){
            Deck deck = new Deck.full();
			expect(deck.length, 81);
		});

        // Testing full deck creation
		test("Creating an full deck", (){
            Deck deck = new Deck.empty();
			expect(deck.length, 0);
		});

		// Testing deck creation from list
		test("Creating a deck from a card list", (){
			List<Color> colors = Colors.getColors();
			List<Card> cards = [new Card(Shape.square, 1, colors[2], Filling.empty), new Card(Shape.circle, 3, colors[0], Filling.full)];
            Deck deck = new Deck.fromList(cards);
			expect(deck.length, 2);
			expect(deck.deck, cards);
		});

		// Testing [] operator
		test("Testing [] operator", (){
			Card c = new Card(Shape.circle, 2, new Color(0, 0, 0), Filling.full);
            Deck deck = new Deck.fromList([c]);
			expect(deck[0], c);
		});
	});
}