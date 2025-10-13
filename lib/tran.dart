import 'package:flutter/material.dart';
import 'package:get/get.dart';
class MyTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'hello': 'Hello',
          'welcome': 'Welcome',
          'change_language': 'Change Language',
        },
        'ar_AR': {
          'hello': 'مرحبا',
          'welcome': 'أهلا وسهلا',
          'change_language': 'تغيير اللغة',
        },
         'pt_BR': {
          'hello': 'Olá do Brasil',
          'welcome':'...',
          'change_language':'....'
          

        },
      };
      
}