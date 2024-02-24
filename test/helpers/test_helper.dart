import 'package:http/http.dart' as http;
import 'package:mockito/annotations.dart';
import 'package:xgrid_test/data/data_sources/get_products_data_source.dart';
import 'package:xgrid_test/domain/repository/get_products_repository.dart';
import 'package:xgrid_test/domain/usecases/get_products_usecase.dart';

@GenerateMocks(
  [
    GetProductsRemoteDataSource,
    GetProductsRepository,
    GetProductsUsecase,
  ],
  customMocks: [MockSpec<http.Client>(as: #MockHttpClient)],
)
void main() {}
