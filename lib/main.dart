import 'dart:developer';

import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:twnty2/UI/Screens/SharedScreens/PaymentScreen/payment_screen.dart';
import 'package:twnty2/UI/Screens/SharedScreens/SplashScreen/splash_screen.dart';

import 'Helper/Providers/app_provider.dart';
import 'Helper/Providers/app_vendor_provider.dart';
import 'Helper/Providers/auth_provider.dart';
import 'Helper/Providers/auth_vendor_provider.dart';
import 'Helper/Router/router.dart';
import 'Helper/SharedPreferance/shared_preferance.dart';

import 'UI/Screens/SharedScreens/AddPaymentMethodScreen/add_payment_method_screen.dart';
import 'UI/Screens/SharedScreens/AddPaymentScreen/add_payment_screen.dart';
import 'UI/Screens/SharedScreens/AddressScreen/add_address_screen.dart';
import 'UI/Screens/SharedScreens/AddressScreen/address_screen.dart';
import 'UI/Screens/SharedScreens/ChooseLanguageScreen/choose_language_screen.dart';
import 'UI/Screens/SharedScreens/ChooseSignUpScreen/choose_signup_screen.dart';
import 'UI/Screens/SharedScreens/EmptyPaymentScreen/empty_payment_screen.dart';
import 'UI/Screens/SharedScreens/ForgetPasswordScreen/forget_password_screen.dart';
import 'UI/Screens/SharedScreens/ForgetPasswordScreen/reset_password_screen.dart';
import 'UI/Screens/SharedScreens/NotificationsScreen/notifications_screen.dart';
import 'UI/Screens/SharedScreens/OnBoardingScreen/onboarding_screen.dart';
import 'UI/Screens/SharedScreens/SelectLocationScreen/select_location_screen.dart';
import 'UI/Screens/SharedScreens/SignInScreen/sign_in_screen.dart';
import 'UI/Screens/SharedScreens/VerificationScreen/verification_screen.dart';
import 'UI/Screens/UserScreens/AddNewAddress/add_new_address.dart';
import 'UI/Screens/UserScreens/CartScreen/cart_screen.dart';
import 'UI/Screens/UserScreens/CategoryScreen/category_screen.dart';
import 'UI/Screens/UserScreens/CheckOutScreen/check_out_screen.dart';
import 'UI/Screens/UserScreens/CheckOutScreen/view_invoice_screen.dart';
import 'UI/Screens/UserScreens/HomeScreen/home_screen.dart';
import 'UI/Screens/UserScreens/MainNavigationScreen/main_navigation_screen.dart';
import 'UI/Screens/UserScreens/ProductDetailsScreen/product_details_screen.dart';
import 'UI/Screens/UserScreens/ProfileScreen/about_screen.dart';
import 'UI/Screens/UserScreens/ProfileScreen/change_password_screen.dart';
import 'UI/Screens/UserScreens/ProfileScreen/contact_us_screen.dart';
import 'UI/Screens/UserScreens/ProfileScreen/edit_profile_screen.dart';
import 'UI/Screens/UserScreens/ProfileScreen/privacy_screen.dart';
import 'UI/Screens/UserScreens/ProfileScreen/profile_screen.dart';
import 'UI/Screens/UserScreens/ProfileScreen/terms_screen.dart';
import 'UI/Screens/UserScreens/RequestsScreen/requests_screen.dart';
import 'UI/Screens/UserScreens/RequestsUserScreen/requests_user_screen.dart';
import 'UI/Screens/UserScreens/SearchHomeScreen/filter_screen.dart';
import 'UI/Screens/UserScreens/SearchHomeScreen/search_screen.dart';
import 'UI/Screens/UserScreens/SignUpScreen/sign_up_screen.dart';
import 'UI/Screens/UserScreens/SubCategoryScreen/sub_category_screen.dart';
import 'UI/Screens/VendorScreens/AddADealScreen/add_a_deal_screen.dart';
import 'UI/Screens/VendorScreens/AddADealScreen/add_a_deal_screen1.dart';
import 'UI/Screens/VendorScreens/AddADealScreen/add_a_deal_screen2.dart';
import 'UI/Screens/VendorScreens/AddADealScreen/add_a_deal_screen3.dart';
import 'UI/Screens/VendorScreens/BranchesScreen/add_branches_screen.dart';
import 'UI/Screens/VendorScreens/BalanceVendorScreen/balance_vendorScreen.dart';
import 'UI/Screens/VendorScreens/BranchesScreen/branches_screen.dart';
import 'UI/Screens/VendorScreens/DealsScreen/deals_screen.dart';
import 'UI/Screens/VendorScreens/DealsScreen1/dealsScreen1.dart';
import 'UI/Screens/VendorScreens/DealsSearchScreen/deals_search_screen.dart';
import 'UI/Screens/VendorScreens/EditDealsScreen/edit_deals_screen.dart';
import 'UI/Screens/VendorScreens/HomeSellerScreen/home_seller_screen.dart';
import 'UI/Screens/VendorScreens/MainSellerNavigationScreen/main_seller_navigation_screen.dart';
import 'UI/Screens/VendorScreens/OrderDetailsScreen1/order_details_screen.dart';
import 'UI/Screens/VendorScreens/RegistrationDataScreen/registration_data_screen.dart';
import 'UI/Screens/VendorScreens/RequestsSellerScreen/requests_seller_screen.dart';
import 'UI/Screens/VendorScreens/SignUpVendorScreen/sign_up_vendor_screen.dart';
import 'UI/Utils/constant.dart';

const String groupKey = 'com.android.example.WORK_EMAIL';
const String groupChannelId = 'grouped channel id';
const String groupChannelName = 'grouped channel name';
const String groupChannelDescription = 'grouped channel description';

const AndroidNotificationChannel channel = AndroidNotificationChannel(
    'high_importance_channel', // id
    'High Importance Notifications', // title
    // description
    importance: Importance.high,
    playSound: true);

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
  print('A bg message just showed up :  ${message.messageId}');
}

// initialise the plugin. app_icon needs to be a added as a drawable resource to the Android head project
const AndroidInitializationSettings initializationSettingsAndroid =
    AndroidInitializationSettings('app_icon');
final IOSInitializationSettings initializationSettingsIOS =
    IOSInitializationSettings(onDidReceiveLocalNotification: (i, s, st, x) {});
final InitializationSettings initializationSettings = InitializationSettings(
    android: initializationSettingsAndroid, iOS: initializationSettingsIOS);

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await flutterLocalNotificationsPlugin
      .resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin>()
      ?.createNotificationChannel(channel);

  await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
    alert: true,
    badge: true,
    sound: true,
  );
  await flutterLocalNotificationsPlugin
      .resolvePlatformSpecificImplementation<
          IOSFlutterLocalNotificationsPlugin>()
      ?.requestPermissions(
        alert: true,
        badge: true,
        sound: true,
      );
  await EasyLocalization.ensureInitialized();

  await SpHelper.spHelper.initSharedPrefrences();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<AuthProvider>(
          create: (context) {
            return AuthProvider();
          },
        ),
        ChangeNotifierProvider<AppProvider>(
          create: (context) {
            return AppProvider();
          },
        ),
        ChangeNotifierProvider<AppVendorProvider>(
          create: (context) {
            return AppVendorProvider();
          },
        ),
        ChangeNotifierProvider<AuthVendorProvider>(
          create: (context) {
            return AuthVendorProvider();
          },
        ),
      ],
      child: EasyLocalization(
          supportedLocales: [Locale('en'), Locale('ar')],
          path: 'assets/langs', // <-- change the path of the translation files
          fallbackLocale: Locale('en'),
          child: RestartWidget(child: MyApps())),
    ),
  );
}

Future<String?> getToken(BuildContext context) async {
  String? token = await FirebaseMessaging.instance.getToken();
  String? tokenApn = await FirebaseMessaging.instance.getAPNSToken();
}

class MyApps extends StatefulWidget {
  @override
  State<MyApps> createState() => _MyAppsState();
}

class _MyAppsState extends State<MyApps> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      RemoteNotification? notification = message.notification;
      AndroidNotification? android = message.notification!.android;
      if (notification != null && android != null) {
        flutterLocalNotificationsPlugin.show(
            notification.hashCode,
            notification.title,
            notification.body,
            NotificationDetails(
              android: AndroidNotificationDetails(
                channel.id,
                channel.name,
                groupAlertBehavior: GroupAlertBehavior.all,
                color: mainAppColor,
                channelDescription: '10',
                playSound: true,
                groupKey: '1',
                icon: '@mipmap/logo',
              ),
            ));
      }
    });

    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      print('A new onMessageOpenedApp event was published!');
      RemoteNotification? notification = message.notification;
      AndroidNotification? android = message.notification!.android;
      if (notification != null && android != null) {
        showDialog(
            context: context,
            builder: (_) {
              return InkWell(
                onTap: () {
                  log('message');
                },
                child: AlertDialog(
                  title: Text(notification.title!),
                  content: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [Text(notification.body!)],
                    ),
                  ),
                ),
              );
            });
      }
    });

    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      RemoteNotification? notification = message.notification;
      showDialog(
        context: context,
        builder: (BuildContext context) => CupertinoAlertDialog(
          title: Text(notification!.title!),
          content: Text(notification.body!),
          actions: [
            CupertinoDialogAction(
              isDefaultAction: true,
              child: Text('Ok'),
              onPressed: () async {
                Navigator.of(context, rootNavigator: true).pop();
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyApps(),
                  ),
                );
              },
            )
          ],
        ),
      );
    });

    getToken(context);
  }

  @override
  Widget build(BuildContext context) {
    // context.setLocale(Locale("ar"));
    //Set the fit size (Find your UI design, look at the dimensions of the device screen and fill it in,unit in dp)
    return ScreenUtilInit(
      designSize: Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, widget) => MaterialApp(
        theme: ThemeData(
          fontFamily: "Cairo",
        ),
        navigatorKey: RouterHelper.routerHelper.routerKey,
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        debugShowCheckedModeBanner: false,
        home: SplachScreen(),
      ),
    );
  }
}

class RestartWidget extends StatefulWidget {
  RestartWidget({required this.child});

  final Widget child;

  static void restartApp(BuildContext context) {
    context.findAncestorStateOfType<_RestartWidgetState>()!.restartApp();
  }

  @override
  _RestartWidgetState createState() => _RestartWidgetState();
}

class _RestartWidgetState extends State<RestartWidget> {
  Key key = UniqueKey();

  void restartApp() {
    setState(() {
      key = UniqueKey();
    });
  }

  @override
  Widget build(BuildContext context) {
    return KeyedSubtree(
      key: key,
      child: widget.child,
    );
  }
}
