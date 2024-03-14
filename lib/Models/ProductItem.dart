

class ProductItem {
  final String name;
  final String imageUrl;
  final double currency;
  late final double discount;
  final String currencyType;
  final String sellingUnit;
  final double rating;
  final String description;
  final int id;

  final List<String> benefits;

  bool get hasBenefits => benefits.isNotEmpty;

  String get price =>"$currencyType$currency";

  ProductItem( {required this.name, required this.id, required this.imageUrl,required this.description,required this.benefits,
    required this.currency, this.currencyType = "\$", required this.discount, required this.sellingUnit, required this.rating,});



  String toString() {
    return '''{
      "name": "$name",
      "imageUrl": "$imageUrl"
    }''';
  }
}