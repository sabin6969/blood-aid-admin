class AppExceptions implements Exception {
  final String errorMessage;
  const AppExceptions({required this.errorMessage}) : super();
}

class BadRequestException extends AppExceptions {
  String? message;
  BadRequestException({required this.message})
      : super(errorMessage: message ?? "Bad Request!");
}

class UnauthorizedRequestException extends AppExceptions {
  String? message;
  UnauthorizedRequestException({this.message})
      : super(
            errorMessage:
                message ?? "Unauthorized Request. Please login again");
}

class ForbiddenRequestException extends AppExceptions {
  String? message;

  ForbiddenRequestException({required this.message})
      : super(
            errorMessage: message ??
                "You are not allowed/permitted to perform this action!");
}

class NotFoundException extends AppExceptions {
  String? message;
  NotFoundException({required this.message})
      : super(
            errorMessage:
                message ?? "Requested resource is not found on the server!");
}

class ResourceConflictException extends AppExceptions {
  String? messsage;
  ResourceConflictException({required this.messsage})
      : super(errorMessage: messsage ?? "Resource conflict!");
}

class InternalServerException extends AppExceptions {
  String? message;
  InternalServerException({required this.message})
      : super(errorMessage: message ?? "Internal server error!");
}
