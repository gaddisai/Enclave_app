import 'package:get/get.dart';
import 'package:tirumala_enclave/receipts/receipts_controller.dart';

class ReceiptsBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => ReceiptsController());
  }

}