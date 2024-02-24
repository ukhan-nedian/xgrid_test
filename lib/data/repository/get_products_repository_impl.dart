import 'package:dartz/dartz.dart';
import 'package:xgrid_test/constants/exception.dart';
import 'package:xgrid_test/constants/failure.dart';
import 'package:xgrid_test/constants/impl/api_failure.dart';
import 'package:xgrid_test/constants/impl/connection_failure.dart';
import 'package:xgrid_test/constants/impl/server_failure.dart';
import 'package:xgrid_test/data/data_sources/get_products_data_source.dart';
import 'package:xgrid_test/domain/entities/ResponseEntity.dart';
import 'package:xgrid_test/domain/repository/get_products_repository.dart';

class GetProductsRepositoryImpl implements GetProductsRepository {
  final GetProductsRemoteDataSource getProductsRemoteDataSource;

  GetProductsRepositoryImpl({required this.getProductsRemoteDataSource});

  @override
  Future<Either<Failure, ResponseEntity>> getProducts() async {
    try {
      final result = await getProductsRemoteDataSource.getProducts();
      return Right(result);
    } on ServerException {
      return const Left(ServerFailure('An error has occurred'));
    } on SocketException {
      return const Left(ConnectionFailure('Failed to connect to the network'));
    } on ApiException catch (e) {
      return Left(ApiFailure(e.errorMessage));
    }
  }
}
