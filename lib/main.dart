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
        primarySwatch: Colors.green
      ),
      darkTheme:  ThemeData(
          primarySwatch: Colors.green
      ),
        debugShowCheckedModeBanner: false,
        color: Colors.green,


        home : const HomeActivity()
    );

  }
  
}


class HomeActivity extends StatelessWidget{
  const HomeActivity({super.key});

  MySnackBar(mess,context){
   return ScaffoldMessenger.of(context).showSnackBar(
     SnackBar(content: Text(mess))
   );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: const Text("Inventory App"),titleSpacing: 10,

          toolbarHeight: 50,
          backgroundColor: Colors.green,
          toolbarOpacity: 1,
          elevation: 6,
          shadowColor: Colors.black,
          actions: [
            IconButton(onPressed: (){MySnackBar("I am Comment", context);}, icon: Icon(Icons.comment)),
            IconButton(onPressed: (){MySnackBar("I am Search", context);}, icon: Icon(Icons.search)),
            IconButton(onPressed: (){MySnackBar("I am setting", context);}, icon: Icon(Icons.settings)),
            IconButton(onPressed: (){MySnackBar("I am mail", context);}, icon: Icon(Icons.mail))
          ],
        ),
      // body: const Text("Hey Whats Up bro"),
      // drawer: (),
      // endDrawer: (),
      // bottomNavigationBar: ( ),
      floatingActionButton: FloatingActionButton(
        elevation: 10,
        child: Icon(Icons.add_circle),
        backgroundColor: Colors.green,
        onPressed: (){
          MySnackBar("Ki lol ato hard lage ken", context);
        },
      ),
      bottomNavigationBar: BottomNavigationBar(

        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.messenger),label: "Message"),
          BottomNavigationBarItem(icon: Icon(Icons.supervised_user_circle),label: "Profile"),

        ],
        onTap: (int index){
          if(index == 0){
            MySnackBar("I am Home bottom menu", context);
          }
          if(index == 1){
            MySnackBar("I am message bottom menu", context);
          }
          if(index == 2){
            MySnackBar("I am profile bottom menu ", context);
          }
        },
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(child: Text("Arif Biswas")),
            ListTile(  title: Text("Home"),  ),
            ListTile(  title: Text("Contact"),  ),
            ListTile(  title: Text("About"),  )
          ],
        ),
      ),

    );

  }

}