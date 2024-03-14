import 'package:e_vegtable_app/Models/ProductItem.dart';
import 'package:flutter/material.dart';
import '../utils/Appcolors.dart';


class CartScreen extends StatelessWidget {
  final List<ProductItem> items;
  const CartScreen({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
   final height = MediaQuery.of(context).size.width;

    return  Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {
          Navigator.pop(context);
          },
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
      body:  ListView.builder(
          padding: EdgeInsets.zero,
          primary: false,
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          itemCount: items.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              width: width * 0.60,
              height: height * 0.4,
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
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Hero(
                      tag: 'ControllerImage',
                      transitionOnUserGestures: true,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.network(
                          items[index].imageUrl,
                          width: 80,
                          height: 80,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                          child: Text(
                            items[index].name,
                            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                          ),
                        ),
                        Text(
                            '\$${items[index].price}',
                            style: const TextStyle(fontSize: 13, color: Appcolors.ThemeTextColor)
                        ),
                        Text(
                          'selling: ${items[index].sellingUnit}',
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(fontSize: 12, color: Appcolors.TextColorLight),
                        ),
                      ],
                    ),

                  ],
                ),
              ),
            );
          }

      )

    );
  }
}
