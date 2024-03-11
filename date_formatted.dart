import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'pakcage:intl/date_symbol_data_local.dart';

void main(){
  runApp(MyWidget());
}

class MyWidget extends StatelessWidget{
  final DateTime now = DateTime.now();
  MyWidget({super.key});

  @override
  Widget build(BuildContext context){
    initializeDateFormatting('fa',null);
    String formattedDatePersian = DateFormat('yyyy_MM_dd HH:mm:ss','fa_IR').format(now);
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Text(formattedDatePersian,style: const TextStyle(fontSize: 50,fontWeight: FontWeight.bold,color: Colors.black,),),
        ),
      ),
    );
  }
}
