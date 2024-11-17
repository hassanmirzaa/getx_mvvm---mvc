
//You can simply make all exceptions like this

class AppExceptions implements Exception{

  final _message;
  final _prefix;
  AppExceptions([this._message, this._prefix, ]);

  String toString(){
    return '$_prefix$_message';
  }
}

class InternetException extends AppExceptions{

  InternetException ([String? message]) : super(message, 'No internet' );
}

class RequestTimeout extends AppExceptions{

  RequestTimeout ([String? message]) : super(message, 'Request Timeout' );
}

class ServerException extends AppExceptions{

  ServerException ([String? message]) : super(message, 'Internal server error' );
}

class InvalidUrl extends AppExceptions{

  InvalidUrl ([String? message]) : super(message, 'Invalid Url' );
}
class FetchDataException extends AppExceptions{

  FetchDataException ([String? message]) : super(message, 'Error while communication' );
}