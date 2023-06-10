import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  List<Message> messageList = [
    Message(text: 'Hola Anna!', fromWho: FromWho.me),
    Message(text: 'Queres salir?', fromWho: FromWho.me),
  ];

  Future<void> sendMessage(String text) async {
    final newMessage = Message(text: text, fromWho: FromWho.me);

    messageList.add(newMessage);

    /* 
      Con esto Flutter notifica a todos los lugares donde se este escuchando sobre este cambio, es similar al set  State  
    */
    notifyListeners(); 
  }
}
