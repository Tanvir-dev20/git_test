import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

import 'fragment/Balancefragment.dart';
import 'fragment/Homefragment.dart';
import 'fragment/Messagefrgament.dart';
import 'fragment/Personfragment.dart';
import 'fragment/Searchfragment.dart';
import 'fragment/Settingfgarment.dart';




main(){
  runApp(
    DevicePreview(builder: (context)=>const MyApp(),
    )
 );
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      title: 'Invantory App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple)
      ),
      home: const HomeActivity(),
    );
  }
}
class HomeActivity extends StatelessWidget{
  const HomeActivity({super.key});
  
  
  @override
Widget build(BuildContext context){
  
  return DefaultTabController(
    length: 6, 
    child:  Scaffold(
    appBar: AppBar(
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      title: Text('Invantory App'),
      bottom: TabBar(
        isScrollable: true,
        tabs: [
          Tab(icon: Icon(Icons.home),text: 'Home',),
          Tab(icon: Icon(Icons.search),text: 'Search',),
          Tab(icon: Icon(Icons.settings),text: 'Setting',),
          Tab(icon: Icon(Icons.message),text: 'Message',),
          Tab(icon: Icon(Icons.person),text: 'Person',),
          Tab(icon: Icon(Icons.balance),text: 'Balance',),
          
        ],
      ),
    ),
    body: TabBarView(
      children: [
        Homefragment(),
        Searchfrgament(),
        Settingfgarment(),
        Messagefrgament(),
        Personfragment(),
        Balancefragment()
    ]
    ),
  )
    );
}
}
