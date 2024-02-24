import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:xgrid_test/domain/entities/ResponseEntity.dart';
import 'package:xgrid_test/domain/usecases/get_products_usecase.dart';

part 'get_products_event.dart';

part 'get_products_state.dart';

class GetProductsBloc extends Bloc<GetProductsEvent, GetProductsState> {
  final GetProductsUsecase getProductsUsecase;

  GetProductsBloc({required this.getProductsUsecase})
      : super(GetProductsInitial()) {
    on<FetchProducts>((event, emit) async {
      emit(GettingProducts());
      final result = await getProductsUsecase.execute();
      result.fold(
        (failure) => emit(ProductsNotFetched(errorMessage: failure.message)),
        (responseEntity) => emit(
          ProductsFetched(responseEntity: responseEntity),
        ),
      );
    });
  }
}
