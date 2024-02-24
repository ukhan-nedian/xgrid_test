import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:xgrid_test/data/repository/get_products_repository_impl.dart';
import 'package:xgrid_test/domain/entities/Cart.dart';
import 'package:xgrid_test/domain/entities/Data.dart';
import 'package:xgrid_test/domain/entities/ResponseEntity.dart';
import 'package:xgrid_test/domain/repository/get_products_repository.dart';

import '../../helpers/test_helper.mocks.dart';

void main() {
  late MockGetProductsRemoteDataSource mockGetProductsDataSource;
  late GetProductsRepository getProductsRepository;

  setUp(() {
    mockGetProductsDataSource = MockGetProductsRemoteDataSource();
    getProductsRepository = GetProductsRepositoryImpl(
        getProductsRemoteDataSource: mockGetProductsDataSource);
  });

  final ResponseEntity testResponseEntity = ResponseEntity(
    success: 1,
    error: const [],
    data: Data(cart: Cart(total: "1 item(s) - SAR 36.80")),
  );

  test(
    'search donor found when a call to data source is success',
    () async {
      // Arrange
      when(mockGetProductsDataSource.getProducts())
          .thenAnswer((_) async => testResponseEntity);

      // Act
      final result = await getProductsRepository.getProducts();

      // Assert
      expect(result, equals(Right(testResponseEntity)));
    },
  );
}
