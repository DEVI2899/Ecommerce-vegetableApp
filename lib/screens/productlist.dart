import 'package:e_vegtable_app/utils/Appcolors.dart';
import 'package:flutter/material.dart';



class ProductList extends StatelessWidget {

  ProductList({super.key});
  //final ProductItem item = [] as ProductItem ;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vegetable Product'),
       centerTitle: true,
       leading: IconButton(onPressed: () {
         Navigator.pop(context);
       }, icon: const Icon(Icons.arrow_back),
       ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width/2,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius:  BorderRadius.circular(8.0),
           color:  Appcolors.containercolor
        ),
        child:   Column(
         children: [
           const Row(
             mainAxisAlignment: MainAxisAlignment.end,
             children: [
               Icon(Icons.favorite_border_outlined, color:  Appcolors.TitleColor,),

             ],
           ),
           SizedBox(
             child: Image.network(
               'https://pngimg.com/uploads/strawberry/strawberry_PNG2630.png',
               height: 130,
               width:  130,
             ),
           ),
           const Align(
             alignment: Alignment.centerLeft,
             child: Text('name',
             //  item.name,
               style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
               maxLines: 1,
               overflow: TextOverflow.ellipsis,
             ),
           ),
           const SizedBox(
             height: 4,
           ),
           const Row(
             children: [
               Text('120',
                   //item.price,
                   style: TextStyle(fontSize: 13, color: Appcolors.ThemeTextColor)),
               SizedBox(
                 width: 4,
               ),
               Expanded(
                 child: Text('12',
                  // item.sellingUnit,
                   overflow: TextOverflow.ellipsis,
                   style: TextStyle(fontSize: 12, color: Appcolors.TextColorLight),
                 ),
               ),
             ],
           )
        ],
      )

      ),
    );
  }
}
