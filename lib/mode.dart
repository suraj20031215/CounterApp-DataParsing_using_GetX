import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:getx/controller.dart';

class HomePage extends StatelessWidget {
   HomePage({super.key});


  @override
  Widget build(BuildContext context) {
   Counter con = Get.put(Counter());
    return Scaffold(
      body: Center(
        child: Obx(() => Text(con.name.value+con.number.value.toString(),textScaleFactor: 1.4,style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),)) ,
      
    ),
    );
  }
}
