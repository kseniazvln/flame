// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_chat.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserChat _$UserChatFromJson(Map<String, dynamic> json) {
  return _UserChat.fromJson(json);
}

/// @nodoc
mixin _$UserChat {
  String get chatId => throw _privateConstructorUsedError;
  String get from => throw _privateConstructorUsedError;
  String get to => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String? get lastMessage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserChatCopyWith<UserChat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserChatCopyWith<$Res> {
  factory $UserChatCopyWith(UserChat value, $Res Function(UserChat) then) =
      _$UserChatCopyWithImpl<$Res, UserChat>;
  @useResult
  $Res call(
      {String chatId,
      String from,
      String to,
      String name,
      String image,
      String? lastMessage});
}

/// @nodoc
class _$UserChatCopyWithImpl<$Res, $Val extends UserChat>
    implements $UserChatCopyWith<$Res> {
  _$UserChatCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatId = null,
    Object? from = null,
    Object? to = null,
    Object? name = null,
    Object? image = null,
    Object? lastMessage = freezed,
  }) {
    return _then(_value.copyWith(
      chatId: null == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as String,
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      lastMessage: freezed == lastMessage
          ? _value.lastMessage
          : lastMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserChatCopyWith<$Res> implements $UserChatCopyWith<$Res> {
  factory _$$_UserChatCopyWith(
          _$_UserChat value, $Res Function(_$_UserChat) then) =
      __$$_UserChatCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String chatId,
      String from,
      String to,
      String name,
      String image,
      String? lastMessage});
}

/// @nodoc
class __$$_UserChatCopyWithImpl<$Res>
    extends _$UserChatCopyWithImpl<$Res, _$_UserChat>
    implements _$$_UserChatCopyWith<$Res> {
  __$$_UserChatCopyWithImpl(
      _$_UserChat _value, $Res Function(_$_UserChat) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatId = null,
    Object? from = null,
    Object? to = null,
    Object? name = null,
    Object? image = null,
    Object? lastMessage = freezed,
  }) {
    return _then(_$_UserChat(
      chatId: null == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as String,
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      lastMessage: freezed == lastMessage
          ? _value.lastMessage
          : lastMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserChat implements _UserChat {
  _$_UserChat(
      {required this.chatId,
      required this.from,
      required this.to,
      required this.name,
      required this.image,
      this.lastMessage});

  factory _$_UserChat.fromJson(Map<String, dynamic> json) =>
      _$$_UserChatFromJson(json);

  @override
  final String chatId;
  @override
  final String from;
  @override
  final String to;
  @override
  final String name;
  @override
  final String image;
  @override
  final String? lastMessage;

  @override
  String toString() {
    return 'UserChat(chatId: $chatId, from: $from, to: $to, name: $name, image: $image, lastMessage: $lastMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserChat &&
            (identical(other.chatId, chatId) || other.chatId == chatId) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.lastMessage, lastMessage) ||
                other.lastMessage == lastMessage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, chatId, from, to, name, image, lastMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserChatCopyWith<_$_UserChat> get copyWith =>
      __$$_UserChatCopyWithImpl<_$_UserChat>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserChatToJson(
      this,
    );
  }
}

abstract class _UserChat implements UserChat {
  factory _UserChat(
      {required final String chatId,
      required final String from,
      required final String to,
      required final String name,
      required final String image,
      final String? lastMessage}) = _$_UserChat;

  factory _UserChat.fromJson(Map<String, dynamic> json) = _$_UserChat.fromJson;

  @override
  String get chatId;
  @override
  String get from;
  @override
  String get to;
  @override
  String get name;
  @override
  String get image;
  @override
  String? get lastMessage;
  @override
  @JsonKey(ignore: true)
  _$$_UserChatCopyWith<_$_UserChat> get copyWith =>
      throw _privateConstructorUsedError;
}
