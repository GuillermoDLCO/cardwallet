import 'dart:async';
import 'package:rxdart/rxdart.dart';

class CardBloc {
    //Controller
    BehaviorSubject<String> _cardType = BehaviorSubject<String>();

    //Agregar datos al stream
    Function(String) get selectCardType => _cardType.sink.add;

    //Recuperar datos del stream
    Stream<String> get cardType => _cardType.stream;

    //Para cerrar el stream
    void dispose(){
      _cardType.close();
    }

    
}