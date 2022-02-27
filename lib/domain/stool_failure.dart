import 'package:freezed_annotation/freezed_annotation.dart';

part 'stool_failure.freezed.dart';

@freezed
class StoolFailure with _$StoolFailure {
  const StoolFailure._();
  const factory StoolFailure.database() = _DatabaseFailure;
  const factory StoolFailure.fileSystem() = _FileSystemFailure;
  const factory StoolFailure.import() = _ImportFailure;
}
