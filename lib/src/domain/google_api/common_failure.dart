import 'package:freezed_annotation/freezed_annotation.dart';

part 'common_failure.freezed.dart';

@freezed
class CommonFailure with _$CommonFailure {
  const factory CommonFailure.cancelledByUser() = CancelledByUser;
  const factory CommonFailure.serverError(String error) = ServerError;
  const factory CommonFailure.notFound() = NotFound;

  const factory CommonFailure.overQueryLimit() = OverQueryLimit;
  const factory CommonFailure.invalidRequest() = InvalidRequest;
  const factory CommonFailure.requestDenied() = RequestDenied;
  const factory CommonFailure.notAutherizedtoAccessResource() =
      NotAutherizedtoAccessResource;

  const factory CommonFailure.requestTimeout() = RequestTimeout;
}
