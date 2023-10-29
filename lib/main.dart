import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tirumala_enclave/expenses/expenses_binding.dart';
import 'package:tirumala_enclave/expenses/expenses_page.dart';
import 'package:tirumala_enclave/receipts/receipts_binding.dart';
import 'package:tirumala_enclave/receipts/receipts_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
      return GetMaterialApp(
       initialRoute: "/receipts",
        getPages: [
          GetPage(name: "/receipts",page: ()=>ReceiptsPage(),binding: ReceiptsBinding() ),
          GetPage(name: "/expenses",page: ()=>ExpensesPage(),binding: ExpensesBinding() ),
        ],
      );
  }

}



