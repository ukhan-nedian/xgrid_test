import 'package:http/http.dart' as http;
import 'package:mockito/annotations.dart';
import 'package:xgrid_test/data/data_sources/get_products_data_source.dart';

@GenerateMocks(
  [GetProductsRemoteDataSource],
  customMocks: [MockSpec<http.Client>(as: #MockHttpClient)],
)
void main() {}
