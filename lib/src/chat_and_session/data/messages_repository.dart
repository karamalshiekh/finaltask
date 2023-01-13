import 'package:chat_and_session/src/chat_and_session/domain/messages.dart';
abstract class MessagesRepository{
  Future<List<Messages>?> getMessages();
  Future <Messages> getMessagescnts({required String contains});
  Future<Messages> getMessagesdate({required String date});
  Future<Messages> getMessagestype({required String type});
}