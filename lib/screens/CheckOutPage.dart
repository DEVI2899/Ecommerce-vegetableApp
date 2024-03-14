import 'package:e_vegtable_app/Bloc/Product/productbloc.dart';
import 'package:e_vegtable_app/Bloc/Product/productstate.dart';
import 'package:e_vegtable_app/utils/Appcolors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../Bloc/Product/productevent.dart';
import '../Models/ProductItem.dart';

class CheckOutPage extends StatefulWidget {
  const CheckOutPage({super.key});

  @override
  State<CheckOutPage> createState() => _CheckOutPageState();
}

class _CheckOutPageState extends State<CheckOutPage> {
  late List<ProductItem> productItems;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      productItems = BlocProvider.of<Productbloc>(context).items;
    });
  }
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
        child: Scaffold(
        appBar: AppBar(
          leading: IconButton(onPressed: () {
             Navigator.pop(context); },
             icon: const Icon(Icons.arrow_back,),
          ),
          centerTitle: true,
          title: const Text('Cart',style:  TextStyle(
            fontWeight: FontWeight.bold,
            color: Appcolors.TitleColor,
            fontSize: 25,
          ),
          ),
        ),
          body: Column(
            children: [
              BlocBuilder<Productbloc, ProductState>(
                builder:  (_, productState){
                  return ListView.builder(
                      padding: EdgeInsets.zero,
                      primary: false,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: productItems.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(16, 8, 16, 0),
                          child: Container(
                            width: double.infinity,
                            height: 100,
                            decoration: BoxDecoration(
                              color: Appcolors.shadowcolor,
                              boxShadow: const [
                                BoxShadow(
                                  blurRadius: 4,
                                  color: Color(0x320E151B),
                                  offset: Offset(0, 1),
                                )
                              ],
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(16, 8, 8, 8),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Hero(
                                    tag: 'ControllerImage',
                                    transitionOnUserGestures: true,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(12),
                                      child: Image.network(
                                        productItems[index].imageUrl,
                                        width: 80,
                                        height: 80,
                                        fit: BoxFit.fitWidth,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                                          child: Text(
                                            productItems[index].name,
                                            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                        Text(
                                          '\$${productItems[index].price}',
                                            style: const TextStyle(fontSize: 13, color: Appcolors.ThemeTextColor)
                                        ),
                                        Padding(
                                          padding: const EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                                          child: Text(
                                            'selling: ${productItems[index].sellingUnit}',
                                            overflow: TextOverflow.ellipsis,
                                            style: const TextStyle(fontSize: 12, color: Appcolors.TextColorLight),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  IconButton(
                                    icon: const Icon(
                                      Icons.delete_outline_rounded,
                                      color: Color(0xFFE86969),
                                      size: 20,
                                    ),
                                    onPressed: () {
                                      BlocProvider.of<Productbloc>(context).add(RemoveProduct(productItems[index]));
                                      // Remove item
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      }

                      );

                }
              ),
            ],

          ),
        )
    );
  }
}
