import 'package:e_vegtable_app/screens/profilepage.dart';
import 'package:e_vegtable_app/utils/Appcolors.dart';
import 'package:flutter/material.dart';
import '../utils/Mockutil.dart';
import '../widgets/CustomCarousal.dart';
import '../widgets/ItemList.dart';
import '../widgets/search.dart';

class Homepage extends StatefulWidget {

  const Homepage({super.key,});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          shadowColor: Appcolors.shadowcolor,
          title: const Text('Vegetable App', style: TextStyle(
            fontWeight: FontWeight.bold
           ),
          ),
          centerTitle: true,
          backgroundColor: Appcolors.appbarcolor,
          leading: IconButton(
            onPressed: () {  },
            icon: const Icon(Icons.dashboard,
                 size: 25, color:Appcolors.leadiconcolor ,),
      
          ),
          actions: [

            GestureDetector(
              onTap:() => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Profilepage())),
              child:  const CircleAvatar(
                radius: 45,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Image(image: AssetImage('assets/images/img.png'),),
                ),
              ),
            )
          ],
        ),
        body: ListView(
            children:  [
              const Search(),
              CustomCarousal(topMargin: 10,),
              const SizedBox(height: 10,),
               ItemList(items: MockUtil.getTrendingItems(), title: "Trending", ),
              const SizedBox(height: 10,),
               ItemList(items: MockUtil.getFeaturedItems(), title: "Feature", ),
              const SizedBox(height: 10,),
               ItemList(items: MockUtil.getTopSellingItems(), title: "Top Selling",),
            ],
          ),


     bottomNavigationBar: Container(
       decoration: const BoxDecoration(
         borderRadius: BorderRadius.only(
           topLeft: Radius.circular(10),
           topRight:Radius.circular(10) ,
         )
       ),
       child: BottomNavigationBar(
         items: const [
           BottomNavigationBarItem(
               icon:  Icon(Icons.home),
             label: 'Home',

           ),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications_none_outlined),
                label: 'Notification',

           ),
           BottomNavigationBarItem(
               icon: Icon(Icons.person_pin, size: 25,),
             label: 'person',
           )
         ],
         currentIndex: _selectedIndex,
         selectedItemColor: Colors.blue,
         onTap: _onItemTapped,
         ),

     ) ,
      ),

    );
  }
}
