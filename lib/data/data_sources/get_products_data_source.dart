import 'package:xgrid_test/domain/entities/ResponseEntity.dart';

abstract class GetProductsDataSource {
  Future<ResponseEntity> getProducts();
}
