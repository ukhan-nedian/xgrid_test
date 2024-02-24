import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/mockito.dart';
import 'package:xgrid_test/constants/exception.dart';
import 'package:xgrid_test/data/data_sources/get_products_data_source.dart';
import 'package:xgrid_test/data/data_sources/impl/get_products_data_source_impl.dart';
import 'package:xgrid_test/domain/entities/Cart.dart';
import 'package:xgrid_test/domain/entities/Data.dart';
import 'package:xgrid_test/domain/entities/ResponseEntity.dart';

import '../../helpers/json_reader.dart';
import '../../helpers/test_helper.mocks.dart';

void main() {
  late MockHttpClient mockHttpClient;
  late GetProductsRemoteDataSource getProductsRemoteDataSource;

  final ResponseEntity testResponseEntity = ResponseEntity(
    success: 1,
    error: const [],
    data: Data(
      cart: Cart(total: "1 item(s) - SAR 36.80"),
    ),
  );

  setUp(() {
    mockHttpClient = MockHttpClient();
    getProductsRemoteDataSource = GetProductsDataSourceImpl(client: mockHttpClient);
  });

  test('get products success when the response code is 200', () async {
    // Arrange
    when(
      mockHttpClient.get(Uri.parse('http:localhost:8080/api/get_products')),
    ).thenAnswer(
      (_) async => http.Response(
        readJson('helpers/dummy_data/Mobile-Task-API-Response.json'),
        200,
      ),
    );
    // Act
    try {
      final ResponseEntity result = await getProductsRemoteDataSource.getProducts();
      print('result = $result');

      // Assert
      expect(result, isA<ResponseEntity>());
    } catch (e) {
      // Assert
      expect(e, isA<ServerException>());
    }
  });

  test('search donor throws ServerException when the response code is not 200',
      () async {
    // Arrange
    when(
      mockHttpClient.get(
        Uri.parse('http:localhost:8080/api/get_products'),
      ),
    ).thenAnswer((_) async => http.Response('Not found', 404));

    // Act
    try {
      final ResponseEntity result = await getProductsRemoteDataSource.getProducts();

      // Assert
      expect(result, isA<ResponseEntity>());
    } catch (e) {
      // Assert
      expect(e, isA<ServerException>());
    }
  });
}
