import 'package:test/test.dart';
import 'dart:math';

import 'package:flutter_hyperset/model/card_data/color.dart';

void main() {
	/// Testing the Color class
	group("Color", (){
		Color color;
        final Random r = new Random();
		
		/// Testing low values
		test("Creating a color with value lower than minimum", (){
			expect((){color = new Color(-1, 120, 120);}, throwsArgumentError);
			expect((){color = new Color(120, -1, 120);}, throwsArgumentError);
			expect((){color = new Color(120, 120, -1);}, throwsArgumentError);
		});

		/// Testing high value
		test("Creating a color with value higher than maximum", (){
			expect((){color = new Color(256, 120, 120);}, throwsArgumentError);
			expect((){color = new Color(120, 256, 120);}, throwsArgumentError);
			expect((){color = new Color(120, 120, 256);}, throwsArgumentError);
		});
		
		/// Testing exact limit values
		test("Creating a color with minimum value", (){
			color = new Color(0, 0, 0);
			expect(color.red, 0);
			expect(color.green, 0);
			expect(color.blue, 0);
		});
		
		test("Creating a color with maximum value", (){
			color = new Color(255, 255, 255);
			expect(color.red, 255);
			expect(color.green, 255);
			expect(color.blue, 255);
		});
		
		/// Testing with random correct values
		test("Creating a color with random correct values", (){
			int red = r.nextInt(255), green = r.nextInt(255), blue = r.nextInt(255);
			color = new Color(red, green, blue);
			expect(color.red, red);
			expect(color.green, green);
			expect(color.blue, blue);
		});
	});
}