import 'package:flutter_hyperset/model/deck.dart';
import 'package:flutter_hyperset/model/card_data/card.dart';
import 'package:flutter_hyperset/model/card_data/color.dart';
import 'package:flutter_hyperset/model/inspectors/inspector.dart';

class SetInspector extends Inspector {
    @override
    bool checkColor(Deck answer) {
        
    }
  
    @override
    bool checkFill(Deck answer) {
      // TODO: implement checkFill
      throw UnimplementedError();
    }
  
    @override
    bool checkNumber(Deck answer) {
      // TODO: implement checkNumber
      throw UnimplementedError();
    }
  
    @override
    bool checkShape(Deck answer) {
      // TODO: implement checkShape
      throw UnimplementedError();
    }
  
    @override
    List<Card> getAnswer(Deck deck) {
      // TODO: implement getAnswer
      throw UnimplementedError();
    }
  
    @override
  int numberInDeck(Deck deck) {
    // TODO: implement numberInDeck
    throw UnimplementedError();
  }
    
}