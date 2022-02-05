import 'package:freezed_annotation/freezed_annotation.dart';

part 'stool_failure.freezed.dart';

@freezed
class StoolFailure with _$StoolFailure {
  const StoolFailure._();
  const factory StoolFailure.local() = _StoolFailure;
}
