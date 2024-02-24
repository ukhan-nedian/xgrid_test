part of 'get_products_bloc.dart';

abstract class GetProductsState extends Equatable {
  const GetProductsState();
}

class GetProductsInitial extends GetProductsState {
  @override
  List<Object> get props => [];
}

class GettingProducts extends GetProductsState {
  @override
  List<Object> get props => [];
}

class ProductsFetched extends GetProductsState {
  final ResponseEntity responseEntity;

  const ProductsFetched({required this.responseEntity});

  @override
  List<Object> get props => [responseEntity];
}

class ProductsNotFetched extends GetProductsState {
  final String errorMessage;

  const ProductsNotFetched({required this.errorMessage});

  @override
  List<Object> get props => [errorMessage];
}
