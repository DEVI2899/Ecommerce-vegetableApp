

import 'package:e_vegtable_app/Models/ProductItem.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

@immutable
abstract class Productevent extends Equatable{}

class AddProduct extends Productevent {
  final ProductItem productIndex;

   AddProduct(this.productIndex);

  @override
  List<Object> get props => [productIndex];

  @override
  String toString() => 'AddProduct { index: $productIndex }';
}

class RemoveProduct extends Productevent {
  final ProductItem productIndex;

  RemoveProduct(this.productIndex);

  @override
  List<Object> get props => [productIndex];

  @override
  String toString() => 'RemoveProduct { index: $productIndex }';
}

