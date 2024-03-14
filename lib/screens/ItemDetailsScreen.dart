import 'dart:math';
import 'package:e_vegtable_app/screens/CartScreen.dart';
import 'package:e_vegtable_app/utils/Mockutil.dart';
import 'package:e_vegtable_app/widgets/CountController.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import '../Models/ProductItem.dart';
import '../utils/Appcolors.dart';


class ItemDetailsScreen extends StatefulWidget {
   final ProductItem item;
  const ItemDetailsScreen( {super.key, required this.item,});

  @override
  State<ItemDetailsScreen> createState() => _ItemDetailsScreenState();
}

class _ItemDetailsScreenState extends State<ItemDetailsScreen> {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          body: Stack(
            children: [
              ListView(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: TextButton.icon(
                        style: ButtonStyle(
                            foregroundColor:
                            MaterialStateProperty.all(Appcolors.ThemeColor)),
                          onPressed: () {
                            Navigator.of(context).pop();
                        },
                        icon: const Icon(Icons.keyboard_arrow_left),
                        label: const Text("Back")),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: IconButton(
                      icon:  const Icon(Icons.shopping_cart_outlined, color:Appcolors.cartColor ,
                      size: 35,
                      ),
                      onPressed: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => CartScreen(items: MockUtil.getTrendingItems(),))
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Image.network(
                    widget.item.imageUrl,
                    height: 300,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    widget.item.name,
                    style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  RatingBar.builder(
                    initialRating: min(widget.item.rating, 5),
                    minRating: 1,
                    itemSize: 20,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemBuilder: (context, _) =>
                        const Icon(Icons.star, color: Colors.amber),
                    onRatingUpdate: (double value) {  },
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const CountController(),
                      Text(
                        widget.item.price,
                        style: const TextStyle(fontSize: 30),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text("About the  Product",
                      style:
                      TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    widget.item.description ,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Appcolors.ThemeTextColor,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  if (widget.item.hasBenefits) _addItemBenefits(),
                  const SizedBox(
                    height: 70,
                  )
                ],
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: _addToCartWidget(),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _addToCartWidget() {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          border: Border(
              top: BorderSide(width: 1.0, color: Appcolors.TextColorLighter))),
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(icon: const Icon(Icons.favorite_border), onPressed: () {  },),
          ElevatedButton(onPressed: (){

              // ProductItem detail = widget.item;
              // // detail.discount = const CountController() as double;
              // BlocProvider.of<Productbloc>(context).add(AddProduct(detail));
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => CartScreen(items: MockUtil.getFeaturedItems(),)));

          },
            style: ElevatedButton.styleFrom(
              backgroundColor: Appcolors.buttoncolor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              )
            ),
            child: const Text('Add To Cart', style: TextStyle(color: Appcolors.shadowcolor ),),

          )
        ],
      ),
    );
  }

  Widget _addItemBenefits() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 20,
        ),
        const Text("Benefits",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700)),
        const SizedBox(
          height: 10,
        ),
        ...List.generate(
          widget.item.benefits.length,
              (index) => Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(
                  Icons.arrow_forward,
                  size: 16,
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: Text(
                      widget.item.benefits[index],
                      style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Appcolors.TextColorLight),
                    ))
              ],
            ),
          ),
        ),
      ],
    );
  }
}
