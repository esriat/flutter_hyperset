import 'package:flutter_hyperset/model/deck.dart';
import 'package:flutter_hyperset/model/card_data/card.dart';
import 'package:flutter_hyperset/model/card_data/color.dart';
import 'package:flutter_hyperset/model/card_data/filling.dart';
import 'package:flutter_hyperset/model/card_data/shape.dart';
import 'package:flutter_hyperset/model/inspectors/inspector.dart';

class SetInspector extends Inspector {
    SetInspector(): super(3);

    // The algorithm of all checkSomething methods are the same, so I'll just give details in the first one
    @override
    bool checkColor(Deck answer) {
        // Retrieving all the colors
        Color c1 = answer[0].color;
        Color c2 = answer[1].color;
        Color c3 = answer[2].color;

        // If 2 colors are the same, return the 3rd == others 
        if(c1 == c2){
            return c1 == c3;
        }
        // Here, c1 != c2, so we return if the other 2 are different
        return c1 != c3 && c2 != c3;
    }

    @override
    bool checkFilling(Deck answer) {
        Filling f1 = answer[0].filling;
        Filling f2 = answer[1].filling;
        Filling f3 = answer[2].filling;

        if(f1 == f2){
            return f1 == f3;
        }
        return f1 != f3 && f2 != f3;
    }

    @override
    bool checkNumber(Deck answer) {
        int n1 = answer[0].numberOfSymbols;
        int n2 = answer[1].numberOfSymbols;
        int n3 = answer[2].numberOfSymbols;

        if(n1 == n2){
            return n1 == n3;
        }
        return n1 != n3 && n2 != n3;
    }

    @override
    bool checkShape(Deck answer) {
        Shape s1 = answer[0].shape;
        Shape s2 = answer[1].shape;
        Shape s3 = answer[2].shape;

        if(s1 == s2){
            return s1 == s3;
        }
        return s1 != s3 && s2 != s3;
    }

    @override
    List<Card> getAnswer(Deck deck) {
        // Calling super so we check possible errors
        super.getAnswer(deck);
        // Shuffling the deck so we get a random answer every time
        deck.shuffle();

        // Looking for an answer..
        int len = deck.length;
        int i, j, k;

        for (i = 0; i < len - 2; i++){
            for(j = i + 1; j < len - 1; j++){
                for(k = j + 1; k < len; k++){
                    List<Card> l = [deck[i], deck[j], deck[k]];
                    if(isCorrect(Deck.fromList(l))){
                        return l;
                    }
                }
            }
        }

        return null;
    }
    
    @override
    int numberInDeck(Deck deck) {
        // Calling super so we check possible errors
        super.getAnswer(deck);

        // Looking for answers..
        int len = deck.length;
        int i, j, k, count = 0;

        for (i = 0; i < len - 2; i++){
            for(j = i + 1; j < len - 1; j++){
                for(k = j + 1; k < len; k++){
                    if(isCorrect(Deck.fromList([deck[i], deck[j], deck[k]]))){
                        count++;
                    }
                }
            }
        }

        return count;
    }
}