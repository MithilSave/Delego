
import 'package:flutter/material.dart';
import 'package:delego/Pages/Home Page/my_drawer.dart';
import 'package:delego/Pages/Profile Page/profil_page.dart';
import 'package:delego/Pages/room_page.dart';
import 'package:delego/Pages/Schedule Page/schedule_page.dart';
import 'package:delego/Pages/Profile Page/Pre_Mun.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //Navigate to profile page
  void goToProfilePage(){
    // pop the menu
    Navigator.pop(context);
    //naviget to Profile Page
    Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePage()));
  }
  void Signout(){}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Home Page'),
        backgroundColor: Colors.blue.shade900,
      ),
      drawer: MyDrawer(
        onProfileTap: goToProfilePage,
        onSignoutTap: Signout,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.blue.shade900),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => RoomPage(),));
              },
              child: Text('Rooms',
              style: TextStyle(
                color: Colors.white,
              ),),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.blue.shade900),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SchedulePage(),));
              },
              child: Text('Schedule',
                style: TextStyle(
                  color: Colors.white,
                ),),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.blue.shade900),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PreMunList(),));
              },
              child: Text('Schedule',
                style: TextStyle(
                  color: Colors.white,
                ),),
            ),
          ),
        ],
      ),
    );
  }
}
