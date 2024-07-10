import 'package:flutter/material.dart';

class QuoteWidget extends StatelessWidget 
{

  final String quotename;
  const QuoteWidget({super.key,  required this.quotename});

  @override
  Widget build(BuildContext context) {
    return  Material(
              elevation: 20,
              borderRadius: BorderRadius.circular(20),
              child: Container(
               decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color:const Color.fromARGB(255, 22, 145, 216)
               ),
               child:  Padding(padding:const EdgeInsets.symmetric(horizontal: 20,
               vertical: 15),
                child:
                
                Text('$quotename',
                textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.white,fontSize: 20,fontStyle:FontStyle.italic ),),
              ),
              ),
            );
  }
}