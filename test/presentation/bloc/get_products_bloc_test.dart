import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:xgrid_test/domain/entities/Cart.dart';
import 'package:xgrid_test/domain/entities/Data.dart';
import 'package:xgrid_test/domain/entities/ResponseEntity.dart';
import 'package:xgrid_test/presentation/bloc/get_products_bloc.dart';

import '../../helpers/test_helper.mocks.dart';

void main() {
  late MockGetProductsUsecase mockGetProductsUsecase;
  late GetProductsBloc getProductsBloc;

  setUp(() {
    mockGetProductsUsecase = MockGetProductsUsecase();
    getProductsBloc =
        GetProductsBloc(getProductsUsecase: mockGetProductsUsecase);
  });

  final ResponseEntity testResponseEntity = ResponseEntity(
    success: 1,
    error: const [],
    data: Data(cart: Cart(total: "1 item(s) - SAR 36.80")),
  );

  test('initial state', () {
    expect(getProductsBloc.state, GetProductsInitial());
  });

  blocTest<GetProductsBloc, GetProductsState>(
    'emit [SearchingDonor, DonorFound] state when submit button pressed event occurs',
    build: () {
      when(mockGetProductsUsecase.execute())
          .thenAnswer((_) async => Right(testResponseEntity));
      return getProductsBloc;
    },
    act: (bloc) => bloc.add(FetchProducts()),
    expect: () => <GetProductsState>[
      GettingProducts(),
      ProductsFetched(responseEntity: testResponseEntity),
    ],
  );
}
