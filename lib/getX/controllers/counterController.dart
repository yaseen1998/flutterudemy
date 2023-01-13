import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/state_manager.dart';

class CounterController extends GetxController {
  RxInt counter = 0.obs;
  // int counter = 0;
  void increment() {
    counter.value++;
    // update();
  }
}
