import 'package:dw_barbershop/src/core/fp/nil.dart';

import '../../core/exceptions/service_exception.dart';
import '../../core/fp/either.dart';

abstract interface class UserLoginService {
  Future<Either<ServiceException, Nil>> execute(String email, String password);
}
