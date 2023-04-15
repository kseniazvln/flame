import 'package:freezed_annotation/freezed_annotation.dart';

part 'message.freezed.dart';
part 'message.g.dart';

@freezed
class Message with _$Message {
    factory Message({
        required String id,
        required String from,
        required int timestamp,
        required String message,
}) = _Message;

    factory Message.fromJson(Map<String, dynamic> json) => _$MessageFromJson(json);
}