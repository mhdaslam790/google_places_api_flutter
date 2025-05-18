abstract class CommonFailure {
  const CommonFailure();
}

class CancelledByUser extends CommonFailure {
  const CancelledByUser();
}

class ServerError extends CommonFailure {
  final String error;
  const ServerError(this.error);
}

class NotFound extends CommonFailure {
  const NotFound();
}

class OverQueryLimit extends CommonFailure {
  const OverQueryLimit();
}

class InvalidRequest extends CommonFailure {
  const InvalidRequest();
}

class RequestDenied extends CommonFailure {
  const RequestDenied();
}

class NotAuthorizedToAccessResource extends CommonFailure {
  const NotAuthorizedToAccessResource();
}

class RequestTimeout extends CommonFailure {
  const RequestTimeout();
}
