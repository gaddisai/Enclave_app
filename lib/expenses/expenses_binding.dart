import 'package:get/get.dart';
import 'package:tirumala_enclave/expenses/expenses_controller.dart';

class ExpensesBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => ExpensesController());
  }

}