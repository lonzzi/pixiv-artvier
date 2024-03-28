// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_viewer_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ImageViewerPageState {
  /// 当前图片索引
  int get pageIndex => throw _privateConstructorUsedError;

  /// （分辨率）是否原图
  bool get isOriginal => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ImageViewerPageStateCopyWith<ImageViewerPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageViewerPageStateCopyWith<$Res> {
  factory $ImageViewerPageStateCopyWith(ImageViewerPageState value,
          $Res Function(ImageViewerPageState) then) =
      _$ImageViewerPageStateCopyWithImpl<$Res, ImageViewerPageState>;
  @useResult
  $Res call({int pageIndex, bool isOriginal});
}

/// @nodoc
class _$ImageViewerPageStateCopyWithImpl<$Res,
        $Val extends ImageViewerPageState>
    implements $ImageViewerPageStateCopyWith<$Res> {
  _$ImageViewerPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageIndex = null,
    Object? isOriginal = null,
  }) {
    return _then(_value.copyWith(
      pageIndex: null == pageIndex
          ? _value.pageIndex
          : pageIndex // ignore: cast_nullable_to_non_nullable
              as int,
      isOriginal: null == isOriginal
          ? _value.isOriginal
          : isOriginal // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImageViewerPageStateImplCopyWith<$Res>
    implements $ImageViewerPageStateCopyWith<$Res> {
  factory _$$ImageViewerPageStateImplCopyWith(_$ImageViewerPageStateImpl value,
          $Res Function(_$ImageViewerPageStateImpl) then) =
      __$$ImageViewerPageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int pageIndex, bool isOriginal});
}

/// @nodoc
class __$$ImageViewerPageStateImplCopyWithImpl<$Res>
    extends _$ImageViewerPageStateCopyWithImpl<$Res, _$ImageViewerPageStateImpl>
    implements _$$ImageViewerPageStateImplCopyWith<$Res> {
  __$$ImageViewerPageStateImplCopyWithImpl(_$ImageViewerPageStateImpl _value,
      $Res Function(_$ImageViewerPageStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageIndex = null,
    Object? isOriginal = null,
  }) {
    return _then(_$ImageViewerPageStateImpl(
      pageIndex: null == pageIndex
          ? _value.pageIndex
          : pageIndex // ignore: cast_nullable_to_non_nullable
              as int,
      isOriginal: null == isOriginal
          ? _value.isOriginal
          : isOriginal // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ImageViewerPageStateImpl implements _ImageViewerPageState {
  const _$ImageViewerPageStateImpl(
      {required this.pageIndex, required this.isOriginal});

  /// 当前图片索引
  @override
  final int pageIndex;

  /// （分辨率）是否原图
  @override
  final bool isOriginal;

  @override
  String toString() {
    return 'ImageViewerPageState(pageIndex: $pageIndex, isOriginal: $isOriginal)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageViewerPageStateImpl &&
            (identical(other.pageIndex, pageIndex) ||
                other.pageIndex == pageIndex) &&
            (identical(other.isOriginal, isOriginal) ||
                other.isOriginal == isOriginal));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pageIndex, isOriginal);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageViewerPageStateImplCopyWith<_$ImageViewerPageStateImpl>
      get copyWith =>
          __$$ImageViewerPageStateImplCopyWithImpl<_$ImageViewerPageStateImpl>(
              this, _$identity);
}

abstract class _ImageViewerPageState implements ImageViewerPageState {
  const factory _ImageViewerPageState(
      {required final int pageIndex,
      required final bool isOriginal}) = _$ImageViewerPageStateImpl;

  @override

  /// 当前图片索引
  int get pageIndex;
  @override

  /// （分辨率）是否原图
  bool get isOriginal;
  @override
  @JsonKey(ignore: true)
  _$$ImageViewerPageStateImplCopyWith<_$ImageViewerPageStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
