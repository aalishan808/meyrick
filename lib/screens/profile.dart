import 'package:flutter/material.dart';
import 'package:meyrick/components/custom_button.dart';
import 'package:meyrick/utils/application_state.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool _loadingButton= false;
  void signOutButtonPressed(){
    setState(() {
      _loadingButton = true;
    });
    Provider.of<ApplicationState>(context,listen: false).signOut();
  }
  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.symmetric(horizontal: 30),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(padding: EdgeInsets.only(bottom: 20),
          child: Text("Hi There", style: Theme.of(context).textTheme.headlineLarge,),
        ),
        CustomButton(text: "Signout", onPress:signOutButtonPressed)
      ],
    ),);
  }
}
