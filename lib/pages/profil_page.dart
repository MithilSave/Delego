import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        centerTitle: true,
        title: const Text('Profile Page'),
      ),
      body: ListView(
        children: [
           SizedBox(height: 50.0,),
          // Profile Pictures
          Icon(
            Icons.person,
            size: 72,
          ),
          //Email o user

        ],
      ),
    );
  }
}
