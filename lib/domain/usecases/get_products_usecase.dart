import 'package:dartz/dartz.dart';
import 'package:xgrid_test/constants/failure.dart';
import 'package:xgrid_test/domain/entities/ResponseEntity.dart';
import 'package:xgrid_test/domain/repository/get_products_repository.dart';

class GetProductsUsecase {
  final GetProductsRepository getProductsRepository;

  GetProductsUsecase({required this.getProductsRepository});

  Future<Either<Failure, ResponseEntity>> execute() async {
    return getProductsRepository.getProducts();
  }
}
