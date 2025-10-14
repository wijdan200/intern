import 'package:flutter/material.dart';
import 'package:get/get.dart';
class MyTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'hello': 'Hello',
          'welcome': 'Welcome',
          'change_language': 'Change Language',
          'Next_Route':'Next Route',
           'Change_Theme': 'Change Theme'
           ,'Start_counting': 'Start counting',
           'clicks': 'Clicks'
        },
        'ar_AR': {
          'hello': 'مرحبا',
          'welcome': 'أهلا وسهلا',
          'change_language': 'تغيير اللغة',
           'Next_Route':'التالي',
           'Change_Theme': 'تغيير الثيم',
           'start_counting': 'ابدأ العد',
           'clicks': 'أضغط',
        },
        //  'pt_BR': {
        //   'hello': 'Olá do Brasil',
        //   'welcome':'...',
        //   'change_language':'....'
          

        // },
      };
      
}

