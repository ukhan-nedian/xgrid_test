part of 'get_products_bloc.dart';

abstract class GetProductsEvent extends Equatable {
  const GetProductsEvent();
}

class FetchProducts extends GetProductsEvent {
  @override
  List<Object?> get props => [];
}
