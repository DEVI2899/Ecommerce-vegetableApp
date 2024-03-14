
import 'package:e_vegtable_app/screens/HomeScreen.dart';
import 'package:e_vegtable_app/screens/ItemDetailsScreen.dart';
import 'package:e_vegtable_app/screens/profilepage.dart';
import 'package:e_vegtable_app/utils/Mockutil.dart';
import 'package:get/get_navigation/get_navigation.dart';

class Routes{
  final getPages = [
    GetPage(name: '/homeScreen', page:()=> Homepage()),
    GetPage(name: '/profile', page:()=> const Profilepage()),
    GetPage(name: '/ItemDetails', page:()=> ItemDetailsScreen(item: MockUtil.getTrendingItems().first,)),
  ];
}