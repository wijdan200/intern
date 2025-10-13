
import 'package:flutter/material.dart';
import 'package:flutter_ex/Homepage.dart';
import 'package:flutter_ex/tran.dart';
import 'package:get/get.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    translations: MyTranslations(),      
    locale: Get.deviceLocale,             
    fallbackLocale: Locale('en', 'US'),    
    home: Homepage(),
  ));
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}







 