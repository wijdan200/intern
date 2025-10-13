import 'package:flutter/material.dart';
import 'package:flutter_ex/Second.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Homepage extends StatelessWidget{
 final controller =Get.put (Controller());
 
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    backgroundColor: Colors.teal,
     body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('welcome'.tr, style: TextStyle(fontSize: 24)),
            SizedBox(height: 23),
            ElevatedButton(
              onPressed: () {
                if (Get.locale == Locale('en', 'US')) {
                  Get.updateLocale(Locale('ar', 'AR'));
                } else {
                  Get.updateLocale(Locale('en', 'US'));
                }
              },
              child: Text('change_language'.tr),
            ),
            GetBuilder<Controller>(
                builder: (_) => Text(
                      'clicks: ${controller.count}',
                    )),
           
            ElevatedButton(
  child: Text('Next Route'),
  onPressed: () {
    Get.to(() => Second());
  },
),SizedBox(height: 20),
ElevatedButton(
  child: Text('Change Theme'),
  onPressed: () {
    Get.changeTheme(
      Get.isDarkMode ? ThemeData.light() : ThemeData.dark(),
    );
  },
),



          
          ],
        ),
      ),
    );
  }
}





