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

  MyAlertDialog(context){

    return showDialog(
        context: context,
        builder: (BuildContext context){
          return AlertDialog(
            title: Text("Kemon Acho"),
            content: Text("Ha Tokei bolchi kemon achos"),
            actions: [
              ElevatedButton(onPressed: (){
                MySnackBar("Valo Nai Bhai", context);
                Navigator.of(context).pop();
                }, child: Text("Valo Nai")),
              ElevatedButton(onPressed: (){
                MySnackBar("Achi Kono Rokom ", context);
                Navigator.of(context).pop();
                }, child: Text("Achi Kono Romok")),
              // ElevatedButton(onPressed: (){}, child: Text("Sei Valo Bhai Alhamduilah"))
            ],
          );
        }
    );
  }


  @override
  Widget build(BuildContext context) {

    //  ButtonStyle buttonStyle = ElevatedButton.styleFrom(
    //     // padding: EdgeInsets.all(20),
    //    backgroundColor: Colors.blue,
    //    foregroundColor: Colors.white,
    //    shape: BeveledRectangleBorder(
    //      borderRadius: BorderRadius.all(Radius.circular(3))
    //    ),
    //    minimumSize: Size(double.infinity, 60)
    // );

    var MyItems = [
      {
        "img" : "https://www.edesk.com/wp-content/uploads/2021/03/find-trending-products-sell-ecommerce.png",
        "title" : "Products 1"
      },{
        "img" : "https://www.edesk.com/wp-content/uploads/2021/03/find-trending-products-sell-ecommerce.png",
        "title" : "Products 2"
      },{
        "img" : "https://www.edesk.com/wp-content/uploads/2021/03/find-trending-products-sell-ecommerce.png",
        "title" : "Products 3"
      },{
        "img" : "https://www.edesk.com/wp-content/uploads/2021/03/find-trending-products-sell-ecommerce.png",
        "title" : "Products 4"
      },
      {
        "img" : "https://www.edesk.com/wp-content/uploads/2021/03/find-trending-products-sell-ecommerce.png",
        "title" : "Products 5"
      },
      {
        "img" : "https://www.edesk.com/wp-content/uploads/2021/03/find-trending-products-sell-ecommerce.png",
        "title" : "Products 6"
      },
      {
        "img" : "https://www.edesk.com/wp-content/uploads/2021/03/find-trending-products-sell-ecommerce.png",
        "title" : "Products 7"
      },
    ];

    return Scaffold(
        appBar: AppBar(
          title: const Text("Inventory App"),titleSpacing: 10,

          toolbarHeight: 50,
          backgroundColor: Colors.amber,
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
      // floatingActionButton: FloatingActionButton(
      //   elevation: 10,
      //   child: Icon(Icons.add_circle),
      //   backgroundColor: Colors.green,
      //   onPressed: (){
      //     MySnackBar("Ki lol ato hard lage ken", context);
      //   },
      // ),
      bottomNavigationBar: BottomNavigationBar(

        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.messenger),label: "Message"),
          BottomNavigationBarItem(icon: Icon(Icons.supervised_user_circle,color: Colors.white,),label: "Profile"),

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

            DrawerHeader(

              padding: EdgeInsets.all(0),

              child: Align(
                alignment: Alignment.center,
                child: UserAccountsDrawerHeader(

                  decoration: BoxDecoration(color : Colors.blue),
                  accountName: Center(
                    child: Text("Arif Biswas" , style : TextStyle(color: Colors.amber)),
                  ),
                  accountEmail: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("arifbiswas@gamil.com")
                    ],
                  ),
                  currentAccountPicture: Image.network("https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500")
                ),
              )
            ),
            ListTile( leading: Icon(Icons.home), title: Text("Home"),  ),
            ListTile( leading: Icon(Icons.phone), title: Text("Contact"),  ),
            ListTile( leading: Icon(Icons.verified_user), title: Text("About"),  )
          ],
        ),
      ),
      endDrawer: Drawer(
        child: ListView(
          children: [

            DrawerHeader(

              padding: EdgeInsets.all(0),

              child: Align(
                alignment: Alignment.center,
                child: UserAccountsDrawerHeader(

                  decoration: BoxDecoration(color : Colors.blue),
                  accountName: Center(
                    child: Text("Arif Biswas" , style : TextStyle(color: Colors.amber)),
                  ),
                  accountEmail: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("arifbiswas@gamil.com")
                    ],
                  ),
                  currentAccountPicture: Image.network("https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500")
                ),
              )
            ),
            ListTile( leading: Icon(Icons.home), title: Text("Home"),  ),
            ListTile( leading: Icon(Icons.phone), title: Text("Contact"),  ),
            ListTile( leading: Icon(Icons.verified_user), title: Text("About"),  )
          ],
        ),
      ),
      // body: Container(
      //   height: 300,
      //   margin: EdgeInsets.all(20),
      //   width: MediaQuery.of(context).size.width ,
      //   decoration: BoxDecoration(color: Colors.amber , borderRadius: BorderRadius.circular(10), border: Border.all(width: 2, color: Colors.black12, style: BorderStyle.solid)),
      //   child: Image.network("https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500") ,
      // ),
// body: Column(
//   // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//   children: [
//     Row(
//       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       children: [
//         Container(
//           height: 150,
//           width: 150,
//
//           child: Image.network("https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
//         ),
//         Container(
//           height: 150,
//           width: 150,
//           child: Image.network("https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
//         )
//         ,
//         Container(
//           height: 150,
//           width: 150,
//           child: Image.network("https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
//         )
//       ],
//     ),
//     Row(
//       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       children: [
//         TextButton(onPressed: (){MySnackBar("I am Text Button", context);}, child: Text("Text Button")),
//         ElevatedButton(onPressed: (){MySnackBar("I am Elevate Button", context);}, child:Text("Elevate Button"),style: buttonStyle, ),
//        OutlinedButton(onPressed: (){MySnackBar("I am Outline Button", context);}, child:Text("Outline Button") )
//       ],
//     ),
//     Center(
//       heightFactor: 2,
//       child: ElevatedButton(onPressed: (){
//      MyAlertDialog(context);
//       },child: Text("Click Me"),),
//     )
//   ],
// )
//     body: Column(
//       mainAxisAlignment: MainAxisAlignment.start,
//       children: [
//   Padding(
//     padding: EdgeInsets.all(10),
//     child: TextField(
//       decoration: InputDecoration(
//         label: Text("First Name"),
//         border: OutlineInputBorder(),
//       ),
//     ) ,
//   ),
//         Padding(
//     padding: EdgeInsets.all(10),
//     child: TextField(
//       decoration: InputDecoration(
//         label: Text("Last Name"),
//         border: OutlineInputBorder(),
//       ),
//     ) ,
//   ),
//         Padding(
//     padding: EdgeInsets.all(10),
//     child: TextField(
//       decoration: InputDecoration(
//         label: Text("Email"),
//         border: OutlineInputBorder(),
//       ),
//     ) ,
//   ),    Padding(
//     padding: EdgeInsets.all(10),
//     child: TextField(
//       decoration: InputDecoration(
//         label: Text("Password"),
//         border: OutlineInputBorder(),
//       ),
//     ) ,
//   ), Padding(
//     padding: EdgeInsets.all(10),
//     child: ElevatedButton(
//       child: Text("Submit"),
//       onPressed: (){},
//       style: buttonStyle,
//     )
//   ),
//       ],
//     ),

    body: ListView.builder(
      itemCount: MyItems.length,
        itemBuilder:(context,index){
        return GestureDetector(
        onTap: (){
          MySnackBar("this a ${MyItems[index]["title"]}",context);
        },
          child: Container(
            margin: EdgeInsets.all(10),
            width: double.infinity,
            height: 230,
            child: Image.network(MyItems[index]["img"]!,fit: BoxFit.fill,) ,
          ),

        );
        } ,
    ) ,
    );

  }

}