import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      title: 'Liquid Swipe',
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  SwipeIt(),
    );
  }
}

class SwipeIt extends StatelessWidget {
  final pages = [
    Container(color: const Color.fromARGB(255, 135, 35, 152), child: const Padding(
        padding: EdgeInsets.all(30.0),
      child: Center(
        child: Column(
          
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.workspaces_rounded, size:100, color: Colors.white,),
            Text('Welcome to MyApp',style: TextStyle(color:Colors.white,fontSize:30,fontFamily: "Nexa",fontWeight: FontWeight.bold)),
            Text(textAlign:TextAlign.center,'Explore the amazing features and functionalities of MyApp',style: TextStyle(color:Colors.white,fontSize:15,fontFamily: "Nexa"))
          ],
        ),
      ),
    )),
    Container(color: Color.fromARGB(255, 105, 47, 115), child: const Padding(
        padding: EdgeInsets.all(45.0),
      child: Center(
        child: Column(
          
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.star_border_rounded, size:100, color: Colors.white,),
            Text('Stay Connected',style: TextStyle(color:Colors.white,fontSize:30,fontFamily: "Nexa",fontWeight: FontWeight.bold)),
            Text(textAlign:TextAlign.center,'Connect with friends and family from around the world with our social features.',style: TextStyle(color:Colors.white,fontSize:15,fontFamily: "Nexa"))
          ],
        ),
      ),
    )),
     Container(color: Color.fromARGB(255, 126, 83, 133), child: Padding(
        padding: EdgeInsets.all(35.0),
      child: Center(
        child: Column(
          
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.widgets_outlined, size:100, color: Colors.white,),
            Text('Get Started',style: TextStyle(color:Colors.white,fontSize:30,fontFamily: "Nexa",fontWeight: FontWeight.bold)),
            Text(textAlign:TextAlign.center,'Get started now and experience the convenience and joy of using MyApp.',style: TextStyle(color:Colors.white,fontSize:15,fontFamily: "Nexa"))
          ],
        ),
      ),
    )),
  ];

  SwipeIt({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LiquidSwipe(
        pages: pages,
        fullTransitionValue: 500,
        enableLoop: true,
        positionSlideIcon: 0.8,
        waveType: WaveType.liquidReveal,
        onPageChangeCallback: (page) {
          // Handle page change if needed
        },
      ),
    );
  }
}