import 'package:test/test.dart';

import 'package:flutter_hyperset/model/deck.dart';
import 'package:flutter_hyperset/model/card_data/card.dart';
import 'package:flutter_hyperset/model/card_data/color.dart';
import 'package:flutter_hyperset/model/card_data/colors.dart';
import 'package:flutter_hyperset/model/card_data/shape.dart';
import 'package:flutter_hyperset/model/card_data/filling.dart';
import 'package:flutter_hyperset/model/inspectors/setinspector.dart';
import 'package:flutter_hyperset/model/inspectors/inspector.dart';

void main() {
	/// Testing the SetInspector class
	group("SetInspector", (){
		List<Color> colors = Colors.getColors();
		// Testing a all-same answer
		test("Creating a right answer with all same data", (){
			List<Card> set = [
				new Card(Shape.circle, 1, colors[0], Filling.hatched),
				new Card(Shape.circle, 1, colors[0], Filling.hatched),
				new Card(Shape.circle, 1, colors[0], Filling.hatched)
			];
            Deck deck = new Deck.fromList(set);
			Inspector inspector = new SetInspector();
			expect(inspector.isCorrect(deck), true);
		});

		// Testing a all-different answer
		test("Creating a right answer with all different data", (){
			List<Card> set = [
				new Card(Shape.circle, 1, colors[0], Filling.full),
				new Card(Shape.square, 2, colors[1], Filling.empty),
				new Card(Shape.triangle, 3, colors[2], Filling.hatched)
			];
            Deck deck = new Deck.fromList(set);
			Inspector inspector = new SetInspector();
			expect(inspector.isCorrect(deck), true);
		});

		// Testing an answer with not enough cards
		test("Creating an answer with not enough cards", (){
			List<Card> set = [
				new Card(Shape.circle, 1, colors[0], Filling.full),
				new Card(Shape.triangle, 3, colors[2], Filling.hatched)
			];
            Deck deck = new Deck.fromList(set);
			Inspector inspector = new SetInspector();
			expect((){inspector.isCorrect(deck);}, throwsArgumentError);
		});

		// Testing an answer with too much cards
		test("Creating an answer with too much cards", (){
			List<Card> set = [
				new Card(Shape.circle, 1, colors[0], Filling.full),
				new Card(Shape.square, 2, colors[2], Filling.hatched),
				new Card(Shape.triangle, 3, colors[1], Filling.empty),
				new Card(Shape.triangle, 3, colors[2], Filling.hatched)
			];
            Deck deck = new Deck.fromList(set);
			Inspector inspector = new SetInspector();
			expect((){inspector.isCorrect(deck);}, throwsArgumentError);
		});

		
	});
}