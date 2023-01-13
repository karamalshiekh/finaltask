import 'package:chat_and_session/src/chat_and_session/data/messages_repository.dart';
import 'package:chat_and_session/src/chat_and_session/domain/messages.dart';
import 'package:dio/dio.dart';


class HttpMessagesRepository implements MessagesRepository{
  final Dio client;
  var dio=Dio();
  HttpMessagesRepository({required this.client});
  @override
  Future<List<Messages>?> getMessages() {
    // TODO: implement getMessages
    throw UnimplementedError();
  }

  @override
  Future<Messages> getMessagescnts({required String contains}) {
    // TODO: implement getMessagescnts
    throw UnimplementedError();
  }

  @override
  Future<Messages> getMessagesdate({required String date}) {
    // TODO: implement getMessagesdate
    throw UnimplementedError();
  }

  @override
  Future<Messages> getMessagestype({required String type}) {
    // TODO: implement getMessagestype
    throw UnimplementedError();
  }
  
}