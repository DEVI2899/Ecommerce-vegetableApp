import 'package:flutter/material.dart';


class Profilepage extends StatefulWidget {
  const Profilepage({super.key});

  @override
  State<Profilepage> createState() => _ProfilepageState();
}

class _ProfilepageState extends State<Profilepage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:  const Text(
          'Profile' , style: TextStyle(color:  Colors.black, fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new), onPressed: () {
            Navigator.pop(context);
        },
        ),
      ),
        body : Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: height* 1.8,
            width: width * 0.97,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              boxShadow:const [
                BoxShadow(
                    color: Colors.grey,
                    blurRadius: 4
              ),
              ],
              color: Colors.white,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CircleAvatar(
                  radius: height * 0.2,
                  child: const Image(image: AssetImage('assets/images/img.png'),),
                ),
                 const Text('Devika',
                   style: TextStyle(color:Colors.black, fontWeight:FontWeight.bold, fontSize: 25),
                 ),
                const Text('Devika@gmail.com',
                  style: TextStyle(color:Colors.black54, fontWeight:FontWeight.bold, fontSize: 25),
                ),
               Container(
                 height: height *0.15,
                 width: width * 0.94,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(10),
                   boxShadow:const [
                   BoxShadow(
                      color: Colors.grey,
                      blurRadius: 0.1
              ),
            ],
            color: Colors.white,
          ),
                 child: const ListTile(

                   leading: Icon(Icons.perm_identity_rounded, size: 30,),
                   title: Text(
                     'My Profile',
                       style: TextStyle(color:Colors.black, fontWeight:FontWeight.normal, fontSize: 25),
                   ),
                   trailing: Icon(Icons.arrow_forward_ios_outlined),
                 ),
               ),
                Container(
                  height: height *0.15,
                  width: width * 0.94,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow:const [
                      BoxShadow(
                          color: Colors.grey,
                          blurRadius: 1
                      ),
                    ],
                    color: Colors.white,
                  ),
                  child: const ListTile(

                    leading: Icon(Icons.location_on_outlined, size: 30,),
                    title: Text(
                      'My Address',
                      style: TextStyle(color:Colors.black, fontWeight:FontWeight.normal, fontSize: 25),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios_outlined),
                  ),
                ),
                Container(
                  height: height *0.15,
                  width: width * 0.94,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow:const [
                      BoxShadow(
                          color: Colors.grey,
                          blurRadius: 1
                      ),
                    ],
                    color: Colors.white,
                  ),
                  child: const ListTile(

                    leading: Icon(Icons.card_giftcard_outlined, size: 30,),
                    title: Text(
                      'My orders',
                      style: TextStyle(color:Colors.black, fontWeight:FontWeight.normal, fontSize: 25),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios_outlined),
                  ),
                ),
                Container(
                  height: height *0.15,
                  width: width * 0.94,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow:const [
                      BoxShadow(
                          color: Colors.grey,
                          blurRadius: 1
                      ),
                    ],
                    color: Colors.white,
                  ),
                  child: const ListTile(

                    leading: Icon(Icons.credit_card, size: 30,),
                    title: Text(
                      'My cards',
                      style: TextStyle(color:Colors.black, fontWeight:FontWeight.normal, fontSize: 25),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios_outlined),
                  ),
                ),
                Container(
                  height: height *0.15,
                  width: width * 0.94,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow:const [
                      BoxShadow(
                          color: Colors.grey,
                          blurRadius: 1
                      ),
                    ],
                    color: Colors.white,
                  ),
                  child: const ListTile(

                    leading: Icon(Icons.settings, size: 30,),
                    title: Text(
                      'settings',
                      style: TextStyle(color:Colors.black, fontWeight:FontWeight.normal, fontSize: 25),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios_outlined),
                  ),
                ),
                Container(
                  height: height *0.15,
                  width: width * 0.94,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow:const [
                      BoxShadow(
                          color: Colors.grey,
                          blurRadius: 1
                      ),
                    ],
                    color: Colors.white,
                  ),
                  child: const ListTile(

                    leading: Icon(Icons.login_sharp, size: 30,),
                    title: Text(
                      'LogOut',
                      style: TextStyle(color:Colors.black, fontWeight:FontWeight.normal, fontSize: 25),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios_outlined),
                  ),
                ),


              ],
            ),
          ),
        )
    );
  }
}
