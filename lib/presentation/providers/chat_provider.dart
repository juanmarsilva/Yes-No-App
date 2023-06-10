import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  List<Message> messageList = [
    Message(text: 'Hola Anna!', fromWho: FromWho.me),
    Message(text: 'Queres salir?', fromWho: FromWho.me),
  ];

  Future<void> sendMessage() async {}
}
