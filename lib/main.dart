
import 'package:flutter/material.dart';
import 'package:flutter_ex/view/Homepage.dart';
import 'package:flutter_ex/Controller/tran.dart';
import 'package:get/get.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    translations: MyTranslations(),      
    locale: Get.deviceLocale,             
    fallbackLocale: Locale('en', 'US'),    
    theme: ThemeData.light(),            
    darkTheme: ThemeData.dark(),          
    themeMode: ThemeMode.light,  
   
   
   
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







 