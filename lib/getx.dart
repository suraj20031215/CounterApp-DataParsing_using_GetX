import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:getx/controller.dart';
import 'package:getx/mode.dart';

class GetData extends StatelessWidget {
   GetData({super.key});

  @override
  Widget build(BuildContext context) {
    Counter con = Get.put(Counter());
   TextEditingController _con= TextEditingController();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.purple,
        title: const Text('Counter App')
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Obx(()=> Column(
            children: [
              Text(con.number.value.toString(),textScaleFactor: 1.6,style: const TextStyle(fontSize: 24),),
const SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
               SizedBox(
                 width:150,
                 height: 50,

                 child: MaterialButton(
                               color: Colors.red[700],


                          onPressed: (){
                        con.Sub();
                      }, child: const Icon(Icons.minimize,color: Colors.white,)),
               ),
                  SizedBox(
                    width:150,
                    height: 50,
                    child: MaterialButton(
                          color: Colors.green[700],
                          onPressed: (){
                            con.Add();
                          }, child: const Icon(Icons.add,color: Colors.white,)),
                  ),
                ],
              ),
             TextField(
               textInputAction: TextInputAction.next,
               controller: _con,
             ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                width: 150,
                height: 50,
                child: MaterialButton(
                    color: Colors.green[700],
                    onPressed: (){
                    Get.to(HomePage());
                    }, child: const Text('GO Next Page',style: TextStyle(color: Colors.white),)),
              ),
            ],
          ),
          )
              ),
        ],
      ),
    );
  }
}
