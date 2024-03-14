import 'package:e_vegtable_app/screens/productlist.dart';
import 'package:e_vegtable_app/utils/Appcolors.dart';
import 'package:flutter/material.dart';
import '../Models/ProductItem.dart';
import 'ItemCard.dart';

class ItemList extends StatelessWidget {
  final List<ProductItem> items;

  final String title;
  const ItemList({super.key, required this.items, required this.title,} );



  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 4),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Appcolors.TitleColor),
              ),

              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> ProductList()));
                },
                child: const Text("See All" ,style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal, color: Appcolors.seeAllColor),),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 170,
          child: ListView.builder(
            itemBuilder: (context, index) => ItemCard(
              item: items[index],
            ),
            itemCount: items.length,
            scrollDirection: Axis.horizontal,
          ),
        ),
      ],
    );
  }
}
