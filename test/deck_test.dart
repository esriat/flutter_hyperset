import 'package:test/test.dart';

import 'package:flutter_hyperset/model/deck.dart';

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
	});
}