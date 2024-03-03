import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

 main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return  MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      darkTheme:  ThemeData(
          primarySwatch: Colors.green
      ),
        color: Colors.blue,
        debugShowCheckedModeBanner: false,

        home : const HomeActivity()
    );

  }
  
}


class HomeActivity extends StatelessWidget{
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(title: const Text("Inventory App"),titleSpacing: 0, centerTitle: true,toolbarHeight: 50,backgroundColor: Colors.redAccent, toolbarOpacity: 1,elevation: 6,shadowColor: Colors.black,),
      // body: const Text("Hey Whats Up bro"),
      // drawer: (),
      // endDrawer: (),
      // bottomNavigationBar: ( ),
      // floatingActionButton: (),

    );

  }

}