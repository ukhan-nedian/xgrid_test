import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:xgrid_test/domain/entities/Cart.dart';
import 'package:xgrid_test/domain/entities/Data.dart';
import 'package:xgrid_test/domain/entities/ResponseEntity.dart';
import 'package:xgrid_test/domain/usecases/get_products_usecase.dart';

import '../../helpers/test_helper.mocks.dart';

void main() {
  late MockGetProductsRepository mockGetProductsRepository;
  late GetProductsUsecase getProductsUsecase;

  final ResponseEntity testResponseEntity = ResponseEntity(
    success: 1,
    error: const [],
    data: Data(
      cart: Cart(total: "1 item(s) - SAR 36.80"),
    ),
  );

  setUp(() {
    mockGetProductsRepository = MockGetProductsRepository();
    getProductsUsecase =
        GetProductsUsecase(getProductsRepository: mockGetProductsRepository);
  });

  test('search donor usecase test', () async {
    // Arrange
    when(mockGetProductsRepository.getProducts())
        .thenAnswer((_) async => Right(testResponseEntity));

    // Act
    final result = await getProductsUsecase.execute();

    // Assert
    expect(result, Right(testResponseEntity));
  });
}
