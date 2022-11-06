// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'popular_tv_shows_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PopularTvShowsState {
  PopularTvShowsModel? get popularTvShowsModel =>
      throw _privateConstructorUsedError;
  StatusModel? get status => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PopularTvShowsStateCopyWith<PopularTvShowsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PopularTvShowsStateCopyWith<$Res> {
  factory $PopularTvShowsStateCopyWith(
          PopularTvShowsState value, $Res Function(PopularTvShowsState) then) =
      _$PopularTvShowsStateCopyWithImpl<$Res, PopularTvShowsState>;
  @useResult
  $Res call(
      {PopularTvShowsModel? popularTvShowsModel,
      StatusModel? status,
      String? errorMessage});
}

/// @nodoc
class _$PopularTvShowsStateCopyWithImpl<$Res, $Val extends PopularTvShowsState>
    implements $PopularTvShowsStateCopyWith<$Res> {
  _$PopularTvShowsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? popularTvShowsModel = freezed,
    Object? status = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      popularTvShowsModel: freezed == popularTvShowsModel
          ? _value.popularTvShowsModel
          : popularTvShowsModel // ignore: cast_nullable_to_non_nullable
              as PopularTvShowsModel?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusModel?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PopularTvShowsStateCopyWith<$Res>
    implements $PopularTvShowsStateCopyWith<$Res> {
  factory _$$_PopularTvShowsStateCopyWith(_$_PopularTvShowsState value,
          $Res Function(_$_PopularTvShowsState) then) =
      __$$_PopularTvShowsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PopularTvShowsModel? popularTvShowsModel,
      StatusModel? status,
      String? errorMessage});
}

/// @nodoc
class __$$_PopularTvShowsStateCopyWithImpl<$Res>
    extends _$PopularTvShowsStateCopyWithImpl<$Res, _$_PopularTvShowsState>
    implements _$$_PopularTvShowsStateCopyWith<$Res> {
  __$$_PopularTvShowsStateCopyWithImpl(_$_PopularTvShowsState _value,
      $Res Function(_$_PopularTvShowsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? popularTvShowsModel = freezed,
    Object? status = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$_PopularTvShowsState(
      popularTvShowsModel: freezed == popularTvShowsModel
          ? _value.popularTvShowsModel
          : popularTvShowsModel // ignore: cast_nullable_to_non_nullable
              as PopularTvShowsModel?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusModel?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_PopularTvShowsState implements _PopularTvShowsState {
  const _$_PopularTvShowsState(
      {this.popularTvShowsModel = null,
      this.status = StatusModel.INITIAL,
      this.errorMessage = 'Esto es un error'});

  @override
  @JsonKey()
  final PopularTvShowsModel? popularTvShowsModel;
  @override
  @JsonKey()
  final StatusModel? status;
  @override
  @JsonKey()
  final String? errorMessage;

  @override
  String toString() {
    return 'PopularTvShowsState(popularTvShowsModel: $popularTvShowsModel, status: $status, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PopularTvShowsState &&
            (identical(other.popularTvShowsModel, popularTvShowsModel) ||
                other.popularTvShowsModel == popularTvShowsModel) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, popularTvShowsModel, status, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PopularTvShowsStateCopyWith<_$_PopularTvShowsState> get copyWith =>
      __$$_PopularTvShowsStateCopyWithImpl<_$_PopularTvShowsState>(
          this, _$identity);
}

abstract class _PopularTvShowsState implements PopularTvShowsState {
  const factory _PopularTvShowsState(
      {final PopularTvShowsModel? popularTvShowsModel,
      final StatusModel? status,
      final String? errorMessage}) = _$_PopularTvShowsState;

  @override
  PopularTvShowsModel? get popularTvShowsModel;
  @override
  StatusModel? get status;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_PopularTvShowsStateCopyWith<_$_PopularTvShowsState> get copyWith =>
      throw _privateConstructorUsedError;
}
