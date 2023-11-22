import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pod_player/pod_player.dart';

import '../model/project_model.dart';
import '../model/project_model.dart';

class Tube extends StatefulWidget {
  const Tube({Key? key}) : super(key: key);

  @override
  State<Tube> createState() => _TubeState();
}

class _TubeState extends State<Tube> {
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
    return DefaultTabController(
      length: 23,
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          leading:
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image(image: AssetImage("assets/youtube.png"),
            width: 21,
            height: 22),
          ),

          backgroundColor: Colors.black,
          title: Text("YouTube",
          style: GoogleFonts.leagueGothic(
            color: Colors.white,
            // fontWeight: FontWeight.bold
          )),
          bottom: PreferredSize(child:
          TabBar(
                dividerColor: Colors.transparent,
              indicator: ShapeDecoration(color: Colors.transparent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusDirectional.circular(8),
                ),
              ),
              isScrollable: true,
              tabs: [

                Tab(child:
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white24,
                                borderRadius: BorderRadius.circular(5)
                              ),
                  height: 33,
                  width: 48,
                  child:
                      Image(image: AssetImage("assets/icons8-compass-24.png"),
                              color: Colors.white)
                            )
                ),
                Tab(
                 child: Container(
                   child: Center(child: Text("All",
                     style:TextStyle(color: Colors.white) ,)),
                   height: 33,
                   width: 44,
                   decoration: BoxDecoration(
                     color: Colors.white24,
                       borderRadius: BorderRadius.circular(5)),
                 ),
                  // text: ,
                ),
                Tab(
                 child: Container(
                   child: Center(child: Text("New to you",
                     style:TextStyle(color: Colors.white) ,)),
                   height: 33,
                   width: 90,
                   decoration: BoxDecoration(
                     color: Colors.white24,
                       borderRadius: BorderRadius.circular(5)),
                 ),
                  // text: ,
                ),
                Tab(
                 child: Container(
                   child: Center(child: Text("Sports entertainment",
                     style:TextStyle(color: Colors.white) ,)),
                   height: 33,
                   width: 150,
                   decoration: BoxDecoration(
                     color: Colors.white24,
                       borderRadius: BorderRadius.circular(5)),
                 ),
                  // text: ,
                ),
                Tab(
                  child: Container(
                    child: Center(child: Text("Music",
                      style:TextStyle(color: Colors.white) ,)),
                    height: 33,
                    width: 56,
                    decoration: BoxDecoration(
                        color: Colors.white24,
                        borderRadius: BorderRadius.circular(5)),
                  ),
                  // text: ,
                ),
                Tab(
                  child: Container(
                    child: Center(child: Text("Gaming",
                      style:TextStyle(color: Colors.white) ,)),
                    height: 33,
                    width: 85,
                    decoration: BoxDecoration(
                        color: Colors.white24,
                        borderRadius: BorderRadius.circular(5)),
                  ),
                  // text: ,
                ),
                Tab(
                  child: Container(
                    child: Center(child: Text("Mixes",
                      style:TextStyle(color: Colors.white) ,)),
                    height: 33,
                    width: 56,
                    decoration: BoxDecoration(
                        color: Colors.white24,
                        borderRadius: BorderRadius.circular(5)),
                  ),
                  // text: ,
                ),
                Tab(
                  child: Container(
                    child: Center(child: Text("Dhar Mann",
                      style:TextStyle(color: Colors.white) ,)),
                    height: 33,
                    width: 89,
                    decoration: BoxDecoration(
                        color: Colors.white24,
                        borderRadius: BorderRadius.circular(5)),
                  ),
                  // text: ,
                ),
                Tab(
                  child: Container(
                    child: Center(child: Text("Nollywood",
                      style:TextStyle(color: Colors.white) ,)),
                    height: 33,
                    width: 87,
                    decoration: BoxDecoration(
                        color: Colors.white24,
                        borderRadius: BorderRadius.circular(5)),
                  ),
                  // text: ,
                ),
                Tab(
                  child: Container(
                    child: Center(child: Text("WWE 2K23",
                      style:TextStyle(color: Colors.white) ,)),
                    height: 33,
                    width: 90,
                    decoration: BoxDecoration(
                        color: Colors.white24,
                        borderRadius: BorderRadius.circular(5)),
                  ),
                  // text: ,
                ),
                Tab(
                  child: Container(
                    child: Center(child: Text("Live",
                      style:TextStyle(color: Colors.white) ,)),
                    height: 33,
                    width: 54,
                    decoration: BoxDecoration(
                        color: Colors.white24,
                        borderRadius: BorderRadius.circular(5)),
                  ),
                  // text: ,
                ),
                Tab(
                  child: Container(
                    child: Center(child: Text("Sketch comedy",
                      style:TextStyle(color: Colors.white) ,)),
                    height: 33,
                    width: 110,
                    decoration: BoxDecoration(
                        color: Colors.white24,
                        borderRadius: BorderRadius.circular(5)),
                  ),
                  // text: ,
                ),
                Tab(
                  child: Container(
                    child: Center(child: Text("Game shows",
                      style:TextStyle(color: Colors.white) ,)),
                    height: 33,
                    width: 87,
                    decoration: BoxDecoration(
                        color: Colors.white24,
                        borderRadius: BorderRadius.circular(5)),
                  ),
                  // text: ,
                ),
                Tab(
                  child: Container(
                    child: Center(child: Text("Thoughts",
                      style:TextStyle(color: Colors.white) ,)),
                    height: 33,
                    width: 87,
                    decoration: BoxDecoration(
                        color: Colors.white24,
                        borderRadius: BorderRadius.circular(5)),
                  ),
                  // text: ,
                ),
                Tab(
                  child: Container(
                    child: Center(child: Text("Cristiano Ronaldo",
                      style:TextStyle(color: Colors.white) ,)),
                    height: 33,
                    width: 125,
                    decoration: BoxDecoration(
                        color: Colors.white24,
                        borderRadius: BorderRadius.circular(5)),
                  ),
                  // text: ,
                ),
                Tab(
                  child: Container(
                    child: Center(child: Text("Sports leagues",
                      style:TextStyle(color: Colors.white) ,)),
                    height: 33,
                    width: 110,
                    decoration: BoxDecoration(
                        color: Colors.white24,
                        borderRadius: BorderRadius.circular(5)),
                  ),
                  // text: ,
                ),
                Tab(
                  child: Container(
                    child: Center(child: Text("Pop Music",
                      style:TextStyle(color: Colors.white) ,)),
                    height: 33,
                    width: 90,
                    decoration: BoxDecoration(
                        color: Colors.white24,
                        borderRadius: BorderRadius.circular(5)),
                  ),
                  // text: ,
                ),
                Tab(
                  child: Container(
                    child: Center(child: Text("Blessings",
                      style:TextStyle(color: Colors.white) ,)),
                    height: 33,
                    width: 85,
                    decoration: BoxDecoration(
                        color: Colors.white24,
                        borderRadius: BorderRadius.circular(5)),
                  ),
                  // text: ,
                ),
                Tab(
                  child: Container(
                    child: Center(child: Text("Rapping",
                      style:TextStyle(color: Colors.white) ,)),
                    height: 33,
                    width: 85,
                    decoration: BoxDecoration(
                        color: Colors.white24,
                        borderRadius: BorderRadius.circular(5)),
                  ),
                  // text: ,
                ),
                Tab(
                  child: Container(
                    child: Center(child: Text("Lessons",
                      style:TextStyle(color: Colors.white) ,)),
                    height: 33,
                    width: 85,
                    decoration: BoxDecoration(
                        color: Colors.white24,
                        borderRadius: BorderRadius.circular(5)),
                  ),
                  // text: ,
                ),
                Tab(
                  child: Container(
                    child: Center(child: Text("Recently uploaded",
                      style:TextStyle(color: Colors.white) ,)),
                    height: 33,
                    width: 132,
                    decoration: BoxDecoration(
                        color: Colors.white24,
                        borderRadius: BorderRadius.circular(5)),
                  ),
                  // text: ,
                ),
                Tab(
                  child: Container(
                    child: Center(child: Text("Flutter",
                      style:TextStyle(color: Colors.white) ,)),
                    height: 33,
                    width: 90,
                    decoration: BoxDecoration(
                        color: Colors.white24,
                        borderRadius: BorderRadius.circular(5)),
                  ),
                  // text: ,
                ),
                Tab(
                  child: Container(
                    child: Center(child: Text("Send feedback",
                      style:TextStyle(color: Colors.blue)
                      )),
                    height: 33,
                    width: 100,

                  ),
                  // text: ,
                ),


              ]), preferredSize: Size.fromHeight(44)),
          actions: [

          Image(image: AssetImage("assets/cast.png"),
            color: Colors.white,
            width: 23,
            height: 23,
          ),
            SizedBox(width: 26),
            Image(image: AssetImage("assets/icons8-notification-50.png"),
            color: Colors.white,
            width: 21,
            height: 21,
          ),
            SizedBox(width: 14),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: IconButton(onPressed: () {

              }, icon:Icon(Icons.search,
                color: Colors.white,) ),
            ),
          ],
        ),
        body:
        ListView.builder
          (itemBuilder:(
            BuildContext context, int index) {
          return PodVideoPlayer
            (controller: controller);},
        itemCount: listprojects.length,
          scrollDirection: Axis.vertical,

         ),


      ),
    );
  }
}
