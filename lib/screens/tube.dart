import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pod_player/pod_player.dart';
import 'package:work/screens/add.dart';
import 'package:work/screens/home.dart';
import 'package:work/screens/profile.dart';
import 'package:work/screens/subscript.dart';

import '../model/project_model.dart';
import '../model/project_model.dart';

class Tube extends StatefulWidget {
  const Tube({Key? key}) : super(key: key);

  @override
  State<Tube> createState() => _TubeState();
}

class _TubeState extends State<Tube> {
List<Widget>screens=[
  Home(),
  Add(),
  Subscript(),
  Profile()
];
  int index= 0;
  @override
  late final PodPlayerController controller;
List<Projectmodel> listprojects = [
  Projectmodel(
      url: 'https://www.youtube.com/shorts/ZkSmcw2UhFs'),
  Projectmodel(url: "https://www.youtube.com/watch?v=mSSyv5ommg0")

];
  @override
  void initState() {
    controller = PodPlayerController(

        playVideoFrom: PlayVideoFrom.youtube( "https://www.youtube.com/watch?v=mSSyv5ommg0")
      // network(
      //   'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerFun.mp4',
      // ),
    )..initialise();
    super.initState();
  } @override
  void dispose() {
    controller.dispose();
    // TODO: implement dispose
    super.dispose();
  }
  Widget build(BuildContext context) {
    return
       Scaffold(
        backgroundColor: Colors.black,
        body:screens[index],

      bottomNavigationBar:
      BottomNavigationBar(
        landscapeLayout:BottomNavigationBarLandscapeLayout.linear ,
          onTap: (valve) {
            setState(() {
              index=valve;
            });
          },
          backgroundColor:Colors.transparent,
            selectedItemColor: Colors.white,
          unselectedItemColor: Colors.yellow,
          unselectedFontSize: 10,
          selectedFontSize: 10,
          currentIndex:index ,

          items: [
            BottomNavigationBarItem(
                label: "Home",
                icon: Icon(Icons.home_filled,
                // color: Colors.white,
                )),
            BottomNavigationBarItem(label: 'Add',
                icon: AnimatedContainer(
                  duration: Duration(milliseconds: 1),
                  child: Image.asset('assets/plus.png',
                      height: 25,
                     ),
                  )),
            BottomNavigationBarItem(label: 'Subscriptions',
                icon:
             Image.asset('assets/play.png',
                height: 25,
              ),
             ),
            BottomNavigationBarItem(label: 'You',
                icon: CircleAvatar(
                    radius: 11,
                    backgroundColor: Colors.purple,
                    child: Text("I",
                    style: TextStyle(
                      color: Colors.white
                    )),
                  ),
                 )
          ]),
       );
  }
}
