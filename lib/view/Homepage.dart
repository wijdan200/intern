import 'package:flutter/material.dart';
import 'package:flutter_ex/view/Second.dart';
import 'package:get/get.dart';

// class Controller extends GetxController {
//   int count = 0;

//   void increment() {
//     count++;
//     update();
//   }
// }

class Homepage extends StatelessWidget {
  final controller = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        title: Text('welcome'.tr),
        actions: [
          IconButton(
            icon: Icon(Icons.settings, size: 30),
            onPressed: () {
              if (Get.locale == Locale('en', 'US')) {
                Get.updateLocale(Locale('ar', 'AR'));
              } else {
                Get.updateLocale(Locale('en', 'US'));
              }
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('start_counting'.tr, style: TextStyle(fontSize: 24)),
            SizedBox(height: 23),
            GetBuilder<Controller>(
              builder: (_) => Text('clicks: ${controller.count}'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text('Next_Route'.tr),
              onPressed: () {
                Get.to(() => Second());
              },
            ),
            SizedBox(height: 20),
            ElevatedButton.icon(
              icon: Icon(Icons.brightness_6),
              label: Text('Change_Theme'.tr),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                textStyle: TextStyle(fontSize: 18),
              ),
              onPressed: () {
                Get.changeThemeMode(
                  Get.isDarkMode ? ThemeMode.light : ThemeMode.dark,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
