import 'package:dartz/dartz.dart';
import 'package:xgrid_test/constants/failure.dart';
import 'package:xgrid_test/domain/entities/ResponseEntity.dart';

abstract class GetProductsRepository {
  Future<Either<Failure, ResponseEntity>> getProducts();
}