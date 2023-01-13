// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'messages.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Messages _$MessagesFromJson(Map<String, dynamic> json) {
  return _Messages.fromJson(json);
}

/// @nodoc
mixin _$Messages {
  String get contains => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessagesCopyWith<Messages> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessagesCopyWith<$Res> {
  factory $MessagesCopyWith(Messages value, $Res Function(Messages) then) =
      _$MessagesCopyWithImpl<$Res, Messages>;
  @useResult
  $Res call({String contains, String type, String date});
}

/// @nodoc
class _$MessagesCopyWithImpl<$Res, $Val extends Messages>
    implements $MessagesCopyWith<$Res> {
  _$MessagesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contains = null,
    Object? type = null,
    Object? date = null,
  }) {
    return _then(_value.copyWith(
      contains: null == contains
          ? _value.contains
          : contains // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MessagesCopyWith<$Res> implements $MessagesCopyWith<$Res> {
  factory _$$_MessagesCopyWith(
          _$_Messages value, $Res Function(_$_Messages) then) =
      __$$_MessagesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String contains, String type, String date});
}

/// @nodoc
class __$$_MessagesCopyWithImpl<$Res>
    extends _$MessagesCopyWithImpl<$Res, _$_Messages>
    implements _$$_MessagesCopyWith<$Res> {
  __$$_MessagesCopyWithImpl(
      _$_Messages _value, $Res Function(_$_Messages) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contains = null,
    Object? type = null,
    Object? date = null,
  }) {
    return _then(_$_Messages(
      contains: null == contains
          ? _value.contains
          : contains // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Messages implements _Messages {
  _$_Messages({required this.contains, required this.type, required this.date});

  factory _$_Messages.fromJson(Map<String, dynamic> json) =>
      _$$_MessagesFromJson(json);

  @override
  final String contains;
  @override
  final String type;
  @override
  final String date;

  @override
  String toString() {
    return 'Messages(contains: $contains, type: $type, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Messages &&
            (identical(other.contains, contains) ||
                other.contains == contains) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, contains, type, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MessagesCopyWith<_$_Messages> get copyWith =>
      __$$_MessagesCopyWithImpl<_$_Messages>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MessagesToJson(
      this,
    );
  }
}

abstract class _Messages implements Messages {
  factory _Messages(
      {required final String contains,
      required final String type,
      required final String date}) = _$_Messages;

  factory _Messages.fromJson(Map<String, dynamic> json) = _$_Messages.fromJson;

  @override
  String get contains;
  @override
  String get type;
  @override
  String get date;
  @override
  @JsonKey(ignore: true)
  _$$_MessagesCopyWith<_$_Messages> get copyWith =>
      throw _privateConstructorUsedError;
}
