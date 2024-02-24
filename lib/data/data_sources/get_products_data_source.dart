import 'package:xgrid_test/domain/entities/ResponseEntity.dart';

abstract class GetProductsRemoteDataSource {
  Future<ResponseEntity> getProducts();
}
