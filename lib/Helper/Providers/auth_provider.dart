import 'dart:developer';
import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:path/path.dart';
import 'package:string_validator/string_validator.dart';
import 'package:twnty2/UI/Screens/UserScreens/SignInScreen/sign_in_screen.dart';

import '../Model/Slide.dart';
import '../Router/router.dart';

class AuthProvider extends ChangeNotifier {
  LatLng? myLocation;

  bool isLoading = false;

  int currentPage = 0;

  final PageController pageController = PageController(initialPage: 0);

  TextEditingController emailController = TextEditingController();
  TextEditingController passwrodController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  bool rememberMe = false;


  TextEditingController emailForgetController = TextEditingController();

  TextEditingController resetPasswordController = TextEditingController();
  TextEditingController ConfirmResetPasswordController =
  TextEditingController();


  var pinPutController = TextEditingController();
  bool isExpire = true;
  bool wrongCode = false;


  TextEditingController fileController = TextEditingController();
  bool errorFile = false;
  File? file;

  final slideList_welcome = [
    Slide(
      imageUrl: 'assets/images/slide1.png',
      title: "Enjoy unlimited discounts",
      text: "Log in and see the best deals on offer",
    ),
    Slide(
      imageUrl: 'assets/images/slide2.png',
      title: "Delivery Service",
      text: "Enter your address to receive products to your doorstep",
    ),
    Slide(
      imageUrl: 'assets/images/slide3.png',
      title: "Safe Payment Methods",
      text:
          "Insert payment cards securely, and do not share the privacy of your data with anyone ",
    ),
  ];

  onPageChanged(int index) {
    currentPage = index;
    notifyListeners();
  }

  String? nullValidator(String? value) {
    if (value!.isEmpty) {
      return 'Required Field';
    }
    return null;
  }

  String? emailValidation(String? value) {
    if (!isEmail(value!)) {
      return 'InCorrect Email syntax';
    }
  }

  getUserLocation() async {
    isLoading = true;
    notifyListeners();
    LocationPermission permission;
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }
    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }
    Position? position;
    try {
      position = await Geolocator.getCurrentPosition();
      myLocation = LatLng(position.latitude, position.longitude);
    } catch (e) {
      log(e.toString());
    }

    if (myLocation != null) {}
    if (position != null) {
      RouterHelper.routerHelper.routingReplacementUntil(SignInScreen());
    }
    isLoading = false;
    notifyListeners();
  }
  PickFile() async {
    try{
    FilePickerResult? result = await FilePicker.platform.pickFiles();
    if (result != null) {
      file = File(result.files.single.path!);
      fileController.text = basename(file!.path);
      errorFile = false;
    }
    }catch(e){
      log(e.toString());
    }
    notifyListeners();
  }
}
