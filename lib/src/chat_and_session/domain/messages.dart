import 'package:freezed_annotation/freezed_annotation.dart';
part 'messages.freezed.dart';
part 'messages.g.dart';

@freezed
class Messages with _$Messages{
factory Messages({
  required String contains,
  required String type,
  required String date,
})= _Messages;
factory Messages.fromJson(Map<String,dynamic>json)=> _$MessagesFromJson(json);
}
