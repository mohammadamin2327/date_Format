import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main(){
  runApp(MyWidget1());
}

class MyWidget1 extends StatelessWidget{
  final double number = 1000000000;
  NumberFormat formatter = NumberFormat('#,###','fa_IR');
  MyWidget({super.key});

  @override
  Widget build(BuildContext context){
    String formatterNumber = formatter.format(number);
    String formattedDatePersian = DateFormat('yyyy_MM_dd HH:mm:ss','fa_IR').format(now);
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Center(
              child: Text(formatterNumber,style: const TextStyle(fontSize: 50,fontWeight: FontWeight.bold,color: Colors.black,),),
            ),
            
          ],
        ),
        
      ),
    );
  }
}
