import 'package:flutter/cupertino.dart';

class AppVendorProvider extends ChangeNotifier{


  List<String> titleUserProfile = [
    'Edit_Profile',
    'Address',
    'My cards',
    'Terms_conditions',
    'Privacy_Policy',
    'language',
    'change_password',
    'Contact_us',
    'About_us',
    'App_Rate',
    'Delete Account',
    'Log_out'
  ];

  List<String> imagesUserProfile = [
    'assets/images/edit_profile.png',
    'assets/images/info.png',
    'assets/images/info.png',
    'assets/images/terms.png',
    'assets/images/privacy.png',
    'assets/images/lang.png',
    'assets/images/password.png',
    'assets/images/contact_us.png',
    'assets/images/info.png',
    'assets/images/rate_app.png',
    'assets/images/Delete.png',
    'assets/images/log_out.png',
  ];
}