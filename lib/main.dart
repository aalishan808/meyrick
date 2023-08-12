import 'dart:convert';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:meyrick/firebase_options.dart';
import 'package:meyrick/screens/checkout.dart';
import 'package:meyrick/screens/home.dart';
import 'package:meyrick/screens/login.dart';
import 'package:meyrick/screens/profile.dart';
import 'package:meyrick/utils/application_state.dart';
import 'package:meyrick/utils/custom_theme.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(
      ChangeNotifierProvider(create: (context) => ApplicationState(), builder:
          (context, _) => Consumer<ApplicationState>(
            builder: (context, applicationState, _) {
              Widget child;
      switch (applicationState.loginState) {
        case ApplicationLoginState.loggedOut:
          child = LoginScreen();
          break;
        case ApplicationLoginState.loggedIn:
          child = MyApp();
          break;
        default:
          child = LoginScreen();
      }

      return MaterialApp(theme: CustomTheme.getTheme(), home: child);
    },
        ),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return
       DefaultTabController(
              length: 3,
              child: Scaffold(
                backgroundColor: Colors.white,
                appBar: AppBar(
                  title: Text("Meyrick Apparels"),
                ),
                bottomNavigationBar: Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(35),
                          topRight: Radius.circular(35)),
                      boxShadow: CustomTheme.cardShadow),
                  child: const TabBar(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    indicatorColor: Colors.transparent,
                    tabs: [
                      Tab(
                        icon: Icon(Icons.home),
                      ),
                      Tab(
                        icon: Icon(Icons.person),
                      ),
                      Tab(
                        icon: Icon(Icons.shopping_cart),
                      ),
                    ],
                  ),
                ),
                body: TabBarView(
                  children: [
                    HomeScreen(),
                    ProfileScreen(),
                    CheckoutScreen()],
                ),
              ),
            );
  }
}