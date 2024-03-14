import 'package:e_vegtable_app/screens/ItemDetailsScreen.dart';
import 'package:e_vegtable_app/utils/Appcolors.dart';
import 'package:flutter/material.dart';

import '../Models/ProductItem.dart';

class ItemCard extends StatelessWidget {
  final ProductItem item;
  const ItemCard( {super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(
                   context,
                   MaterialPageRoute(builder: (context) => ItemDetailsScreen( item:item)),
                 );
      } ,
      child: Container(
        width: 120,
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.symmetric(horizontal: 6),
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 1,
            offset: const Offset(0, 1), // changes position of shadow
          ),
        ], borderRadius: BorderRadius.circular(10), color: Colors.white),
        child: Column(
          children: [
            Image.network(
              item.imageUrl,
              height: 100,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                item.name,
                style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Row(
              children: [
                Text(item.price,
                    style: const TextStyle(fontSize: 13, color: Appcolors.ThemeTextColor)),
                const SizedBox(
                  width: 4,
                ),
                Expanded(
                  child: Text(
                    item.sellingUnit,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(fontSize: 12, color: Appcolors.TextColorLight),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
