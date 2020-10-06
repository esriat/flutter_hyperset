import 'package:test/test.dart';
import 'dart:math';

import 'package:flutter_hyperset/model/card_data/card.dart';
import 'package:flutter_hyperset/model/card_data/shape.dart';
import 'package:flutter_hyperset/model/card_data/filling.dart';
import 'package:flutter_hyperset/model/card_data/colors.dart';
import 'package:flutter_hyperset/model/card_data/color.dart';

void main() {
	/// Testing the Card class
	group("Card", (){
		Card card;
		List<Color> colors = Colors.getColors();
        final Random r = new Random();

		/// Testing incorrect value (number of symbols)
		test("Creating a card with lower number of symbols", (){
			expect((){card = new Card(Shape.circle, 0, colors[0], Filling.full);}, throwsArgumentError);
		});

		test("Creating a card with higher number of symbols", (){
			expect((){card = new Card(Shape.circle, 4, colors[0], Filling.full);}, throwsArgumentError);
		});

		// Testing low value
		test("Creating a card with low number of symbols", (){
			card = new Card(Shape.circle, 1, colors[0], Filling.full);
			expect(card.numberOfSymbols, 1);
		});

		// Testing high value
		test("Creating a card with high number of symbols", (){
			card = new Card(Shape.circle, 3, colors[0], Filling.full);
			expect(card.numberOfSymbols, 3);
		});

		// Testing random value
		test("Creating a card with random number of symbols", (){
			int n = 1 + r.nextInt(2);
			card = new Card(Shape.circle, n, colors[0], Filling.full);
			expect(card.numberOfSymbols, n);
		});
	});
}