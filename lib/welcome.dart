import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mytour/prison.dart';

import 'Kizimkazi.dart';
import 'VERDE.dart';
import 'fumba.dart';
import 'jozani.dart';
import 'login.dart';
import 'mji mkongwe.dart';


class Page1 extends StatefulWidget {
  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> with SingleTickerProviderStateMixin {
  late TabController tabController;

  get child => null;


  @override
  void initState() {
    super.initState();
    tabController = TabController(vsync: this, length: 2);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              icon: const Icon(Icons.person),
              onPressed:(){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => login()),
                );
              }
          )


        ],

backgroundColor: Colors.green,

      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15.0, left: 85.0),
            child: Text(
              'ZANZIBAR TOURISM ',
              style: TextStyle(fontWeight: FontWeight.w800, fontSize: 27.0),
            ),
          ),
          SizedBox(height: 25.0),
          Padding(
            padding: EdgeInsets.only(left: 15.0, right: 15.0),
            child: Container(
              padding: EdgeInsets.only(left: 15.0),
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(15.0)),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Search',
                    hintStyle: TextStyle(fontSize: 14.0),
                    border: InputBorder.none,
                    fillColor: Colors.grey.withOpacity(0.5),
                    prefixIcon: Icon(Icons.search, color: Colors.grey)),
              ),

            ),

          ),
          const SizedBox(height: 30,
            child: Text("Jozani Forest",style: TextStyle(fontSize: 18,fontWeight:FontWeight.bold),textAlign:TextAlign.center),
          ),


          InkWell(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  jozani()),
              );

            },
            child:Container(
              height: 270,
              padding: const EdgeInsets.fromLTRB(30,200,0,0),
              child:Text("Jozani Forest",style: TextStyle(fontSize: 18,fontWeight:FontWeight.bold),textAlign:TextAlign.left),
              decoration:BoxDecoration(
                image:DecorationImage(
                    image:AssetImage("images/kima.jpg",),fit:BoxFit.fitHeight
                ),
              ),

              //
              // color: Colors.lightBlueAccent,
            ),
          ),
          SizedBox(height: 5,),
          Container(
            alignment:Alignment.centerRight,
            height: 40,
            //  padding:EdgeInsets.fromLTRB(0, 0, 10, 20),
            //color:Colors.red,
            child:RaisedButton(
              child:Text("Details"),
              color:Colors.blue,
              textColor:Colors.white,
              onPressed: (){

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  jozani()),
                );



              },
            ),
          ),

          const SizedBox(height: 30,
            child: Text("Verde Hotel",style: TextStyle(fontSize: 18,fontWeight:FontWeight.bold),textAlign:TextAlign.center),
          ),


          InkWell(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  jozani()),
              );

            },
            child:Container(
              height: 270,
              padding: const EdgeInsets.fromLTRB(30,200,0,0),
              child:Text("Verde Hotel",style: TextStyle(fontSize: 18,fontWeight:FontWeight.bold),textAlign:TextAlign.left),
              decoration:BoxDecoration(
                image:DecorationImage(
                    image:AssetImage("images/verdee.jpg",),fit:BoxFit.fitHeight
                ),
              ),

              //
              // color: Colors.lightBlueAccent,
            ),
          ),
          SizedBox(height: 5,),
          Container(
            alignment:Alignment.centerRight,
            height: 40,
            //  padding:EdgeInsets.fromLTRB(0, 0, 10, 20),
            //color:Colors.red,
            child:RaisedButton(
              child:Text("Details"),
              color:Colors.blue,
              textColor:Colors.white,
              onPressed: (){

                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  Verde()),
                  );



              },
            ),
          ),
          const SizedBox(height: 30,
            child: Text("Stone town",style: TextStyle(fontSize: 18,fontWeight:FontWeight.bold),textAlign:TextAlign.center),
          ),


          InkWell(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  jozani()),
              );

            },
            child:Container(
              height: 270,
              padding: const EdgeInsets.fromLTRB(30,200,0,0),
              child:Text("Stone town",style: TextStyle(fontSize: 18,fontWeight:FontWeight.bold),textAlign:TextAlign.left),
              decoration:BoxDecoration(
                image:DecorationImage(
                    image:AssetImage("images/stonetown.jpg",),fit:BoxFit.fitHeight
                ),
              ),

              //
              // color: Colors.lightBlueAccent,
            ),
          ),
          SizedBox(height: 5,),
          Container(
            alignment:Alignment.centerRight,
            height: 40,
            //  padding:EdgeInsets.fromLTRB(0, 0, 10, 20),
            //color:Colors.red,
            child:RaisedButton(
              child:Text("Details"),
              color:Colors.blue,
              textColor:Colors.white,
              onPressed: (){

                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  Mjimkongwe()),
                  );



              },
            ),
          ),
          const SizedBox(height: 30,
            child: Text("Prison Island",style: TextStyle(fontSize: 18,fontWeight:FontWeight.bold),textAlign:TextAlign.center),
          ),


          InkWell(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  jozani()),
              );

            },
            child:Container(
              height: 270,
              padding: const EdgeInsets.fromLTRB(30,200,0,0),
              child:Text("Prison island",style: TextStyle(fontSize: 18,fontWeight:FontWeight.bold),textAlign:TextAlign.left),
              decoration:BoxDecoration(
                image:DecorationImage(
                    image:AssetImage("images/prison.jpg",),fit:BoxFit.fitHeight
                ),
              ),

              //
              // color: Colors.lightBlueAccent,
            ),
          ),
          SizedBox(height: 5,),
          Container(
            alignment:Alignment.centerRight,
            height: 40,
            //  padding:EdgeInsets.fromLTRB(0, 0, 10, 20),
            //color:Colors.red,
            child:RaisedButton(
              child:Text("Details"),
              color:Colors.blue,
              textColor:Colors.white,
              onPressed: (){

                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  Prison()),
                  );



              },
            ),
          ),
          const SizedBox(height: 30,
            child: Text("Kizimkazi",style: TextStyle(fontSize: 18,fontWeight:FontWeight.bold),textAlign:TextAlign.center),
          ),


          InkWell(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  jozani()),
              );

            },
            child:Container(
              height: 270,
              padding: const EdgeInsets.fromLTRB(30,200,0,0),
              child:Text("Kizimkazi",style: TextStyle(fontSize: 18,fontWeight:FontWeight.bold),textAlign:TextAlign.left),
              decoration:BoxDecoration(
                image:DecorationImage(
                    image:AssetImage("images/kizimkazi.gif",),fit:BoxFit.fitHeight
                ),
              ),

              //
              // color: Colors.lightBlueAccent,
            ),
          ),
          SizedBox(height: 5,),
          Container(
            alignment:Alignment.centerRight,
            height: 40,
            //  padding:EdgeInsets.fromLTRB(0, 0, 10, 20),
            //color:Colors.red,
            child:RaisedButton(
              child:Text("Details"),
              color:Colors.blue,
              textColor:Colors.white,
              onPressed: (){

                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  Kizimkazi()),
                  );



              },
            ),
          ),
          const SizedBox(height: 30,
            child: Text("Fumba",style: TextStyle(fontSize: 18,fontWeight:FontWeight.bold),textAlign:TextAlign.center),
          ),


          InkWell(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  jozani()),
              );

            },
            child:Container(
              height: 270,
              padding: const EdgeInsets.fromLTRB(30,200,0,0),
              child:Text("Fumba",style: TextStyle(fontSize: 18,fontWeight:FontWeight.bold),textAlign:TextAlign.left),
              decoration:BoxDecoration(
                image:DecorationImage(
                    image:AssetImage("images/fumba.jpg",),fit:BoxFit.fitHeight
                ),
              ),

              //
              // color: Colors.lightBlueAccent,
            ),
          ),
          SizedBox(height: 5,),
          Container(
            alignment:Alignment.centerRight,
            height: 40,
            //  padding:EdgeInsets.fromLTRB(0, 0, 10, 20),
            //color:Colors.red,
            child:RaisedButton(
              child:Text("Details"),
              color:Colors.blue,
              textColor:Colors.white,
              onPressed: (){

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  Fumba()),
                );



              },
            ),
          ),















        ]
      )


    );



  }

}