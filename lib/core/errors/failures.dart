import 'package:dio/dio.dart';

abstract class Failures {
  final String errormessage;
  Failures(this.errormessage);
}

class ServerFailure extends Failures {
  ServerFailure(super.errormessage);

  factory ServerFailure.fromDioError(DioError dioerror) {
    switch (dioerror.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('connection Timeout');
      case DioExceptionType.sendTimeout:
        return ServerFailure('send Timeout with Api server');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('receive Timeout with Api server');
      case DioExceptionType.badCertificate:
        return ServerFailure('bad Certificat with Api server');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioerror.response!.statusCode!, dioerror.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure('cancle  Api server');
      case DioExceptionType.connectionError:
        return ServerFailure('connection Error');
      case DioExceptionType.unknown:
        if (dioerror.message!.contains('SocketException')) {
          return ServerFailure('No Internet Connection');
        } else {
          return ServerFailure('Unexpected Error ,please try again !');
        }
       default:
           return ServerFailure('There was an Error ,please try later !');
    }
  }
  factory ServerFailure.fromResponse(int statuscode, dynamic response) {
    if (statuscode == 400 || statuscode == 401 || statuscode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statuscode == 404) {
      return ServerFailure('Your request not found ,please try later !');
    } else if (statuscode == 500) {
      return ServerFailure('Internal Server Error ,please try later !');
    } else {
      return ServerFailure('There was an Error ,please try later !');
    }
  }
}
