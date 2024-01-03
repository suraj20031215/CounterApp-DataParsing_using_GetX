import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class Counter extends GetxController{
  RxInt number = 0.obs;
  RxString name = 'Value='.obs;
  void Add(){
    number++;
  }
  void Sub(){
    number--;
  }
}