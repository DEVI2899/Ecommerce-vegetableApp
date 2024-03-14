import 'package:e_vegtable_app/Bloc/CounterBloc.dart';
import 'package:e_vegtable_app/utils/Appcolors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../Bloc/counterevent.dart';


class CountController extends StatefulWidget {
  const CountController({super.key});

  @override
  State<CountController> createState() => _CountControllerState();
}

class _CountControllerState extends State<CountController> {


  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.width;
    return  Container(
      height: height * 0.14,
      width: width * 0.35,
      decoration:  BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Appcolors.TextColorLight
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
          onPressed: () => context.read<CounterBloc>().add(Increment()),
              icon: const Icon(Icons.add, color: Appcolors.shadowcolor,)),

          BlocBuilder<CounterBloc, int>(
              builder:(context, count){
                return Text('$count',
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black), );
              } ),

          IconButton(
              onPressed: () => context.read<CounterBloc>().add(Decrement()),
              icon: const Icon(Icons.remove, color: Appcolors.shadowcolor,))
        ],
      ) ,
    );
  }
}
