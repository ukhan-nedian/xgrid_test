import 'package:http/http.dart' as http;
import 'package:mockito/annotations.dart';
import 'package:xgrid_test/data/data_sources/get_products_data_source.dart';
import 'package:xgrid_test/domain/repository/get_products_repository.dart';

@GenerateMocks(
  [GetProductsRemoteDataSource, GetProductsRepository],
  customMocks: [MockSpec<http.Client>(as: #MockHttpClient)],
)
void main() {}
