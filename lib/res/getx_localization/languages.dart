
import 'package:get/get.dart';

class Languages extends Translations{

  @override
  Map<String,Map<String,String>> get keys =>{
    'en_US' : {
      'email_hint' : 'Enter email',
      'internet_exception' : "We're unable to show results\n Please check yor internet connection",
      'general_exception' : "We're unable to process your request \n Please try again"
    },

    'ur_PK' : {
      'email_hint' : 'ای میل درج کریں۔'
    },
  };
}