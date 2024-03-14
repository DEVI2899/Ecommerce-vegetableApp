

import 'package:e_vegtable_app/Models/ProductItem.dart';
import 'package:flutter/cupertino.dart';

@immutable

abstract class ProductState{
  final List<ProductItem> productItem;
  const ProductState(this.productItem);
  @override
  List<Object> get props => [];

}



class ProductLoading extends ProductState{
  const ProductLoading(super.productItem);
}

class ProductAdded extends ProductState{
  final List<ProductItem> productItem;
 const ProductAdded({required this.productItem}) : super(productItem);

  @override
  List<Object> get props => [productItem];

}

class ProductRemoved extends ProductState{
  final List<ProductItem> productItem;
  const ProductRemoved({required this.productItem}) : super(productItem);

  @override
  List<Object> get props => [productItem];
}

