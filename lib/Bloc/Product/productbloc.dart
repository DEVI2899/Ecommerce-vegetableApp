

import 'package:e_vegtable_app/Bloc/Product/productevent.dart';
import 'package:e_vegtable_app/Bloc/Product/productstate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../Models/ProductItem.dart';


class Productbloc extends Bloc<Productevent, ProductState>{

  Productbloc():super(const ProductAdded(productItem: []));

    final List<ProductItem> _productItems = [];
    List<ProductItem> get items => _productItems;

  Stream<ProductState> mapEventToState(Productevent event) async* {
    if (event is AddProduct) {
      _productItems.add(event.productIndex);
      yield ProductAdded( productItem: _productItems);
    } else if (event is RemoveProduct) {
      _productItems.remove(event.productIndex);
      yield ProductRemoved( productItem: _productItems);
    }
  }




}