import 'package:dartz/dartz.dart';
import 'package:mobile/domain/core/error.dart';
import 'package:mobile/domain/search/repo.dart';

///Interface for creating easy to use Api.
///A human-readable explanation of the reason why the class is immutable.
abstract class Usecase<Type, Params> {
  final SearchData repo;

  const Usecase(this.repo);

  Future<Either<CinephileError, Type>> call(Params params);
}
