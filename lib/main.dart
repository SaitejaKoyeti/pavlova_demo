import 'package:flutter/material.dart';

void main() {
 runApp(MyApp());

}

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'pavlova App',
      home: buildHomePage("Strawberry pavlova recpie"),
    );
  }

 Widget buildHomePage(String title) {
   const titleText = Padding(
      padding: EdgeInsets.all(20),
      child: Text('Strawberry pavlova',
        style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600,letterSpacing: 0.5),
      ),
    );

    const subText = Text(
      'pavlova is a meringue based dessert named after the russian ballerine Anna Pavlova.'
      '\n Pavlova feature a crisp crust & soft, light limide topped with fruit and Whipped cream', textAlign: TextAlign.center,
        style: TextStyle(fontFamily: 'serif',fontSize: 25),
    );

  final ratings= Container(

    child: Row(
mainAxisAlignment: MainAxisAlignment.center,
    children: [
      
      Icon(Icons.star, color: Colors.cyan,),
      Icon(Icons.star, color: Colors.cyan,),
      Icon(Icons.star, color: Colors.cyan,),
      Icon(Icons.star, color: Colors.cyan[800],),
      Icon(Icons.star, color: Colors.cyan[800],),
      Text("     150 Reviews",style: TextStyle(color: Colors.cyan[900], fontFamily: 'cursive', letterSpacing: 0.5,fontSize: 20),),
    ],
    ),
  );

  final iconsList = Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
        children: [
          Icon(Icons.timer),
          Text("Cook"),
          Text("1hr")
        ],


        ),
        Column(
          children: [
            Icon(Icons.restaurant),
            Text("Feeds"),
            Text("4-6")
          ],

        ),
        Column(
          children: [
            Icon(Icons.kitchen),
            Text("PREP"),
            Text("25mnts")
          ],

        ),
      ],
    ),
  );

   final leftcolumn= Container(
     child: Column(
       children: [titleText,subText,ratings,iconsList],
     ),
   );
 final mainImage = Image.asset("images/pavlova.jpg");
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),

      body: Center(
        child: Container(
          height: 600,
          child: Card(
            child: Row(
              children: [
                SizedBox(
                  width: 400,
                  child: leftcolumn,
                ),
                mainImage
              ],
            ),
          ),
        ),
      ),

    );

  }

}