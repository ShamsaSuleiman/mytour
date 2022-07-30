import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:mytour/payment.dart';
import 'package:mytour/signin.dart';


void main()=>
    runApp(MaterialApp());
class Tanzanite extends StatefulWidget {
  List list;
  int index;
  int customer_id;
  Tanzanite({required this.index,required this.list,required this.customer_id});

  @override
  State<Tanzanite> createState() => _TanzaniteState();
}

class _TanzaniteState extends State<Tanzanite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
      ),
      body: ListView(
          children: [
            Padding(
            padding: const EdgeInsets.fromLTRB(0,0,0,0),
        child: Container(
          padding: EdgeInsets.only(top: 250.0),

            decoration:BoxDecoration(
              image:DecorationImage(
                  image: new MemoryImage(Base64Decoder().convert(widget.list[widget.index].image)),fit:BoxFit.fitHeight
              ),
            ),
        ),
    ),


            Padding(
              padding: const EdgeInsets.only(top: 15.0, left: 10.0),
              child: Container(
                padding: EdgeInsets.only(top: 10.0),
                decoration: BoxDecoration(
                  color: Colors.red.withOpacity(0.1),
                ),
                child: Text(widget.list[widget.index].name+" \n 05 days tour packages \n island and mainland "),

              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Container(
                padding: EdgeInsets.only(top: 10.0),
                decoration: BoxDecoration(
                  color: Colors.red.withOpacity(0.1),
                ),
                child: Text("Cost \n 100000000 "),

              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Container(
                padding: EdgeInsets.only(top: 10.0),
                decoration: BoxDecoration(
                  color: Colors.red.withOpacity(0.1),
                ),
                child: Text("description:  \n "+widget.list[widget.index].description)

              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Container(
                padding: EdgeInsets.only(top: 10.0),
                decoration: BoxDecoration(
                  color: Colors.red.withOpacity(0.1),
                ),
                child: Text(" startdate:  \n "+widget.list[widget.index].startdate)

              ),
            ),



            Padding(
              padding: const EdgeInsets.only(top: 15.0, left: 10.0),
              child: Container(
                padding: EdgeInsets.only(top: 10.0),
                decoration: BoxDecoration(
                  color: Colors.red.withOpacity(0.1),
                ),
                child: Text("finishdate:  \n "+widget.list[widget.index].finishdate),

              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 15.0, left: 10.0),
              child: Container(
                padding: EdgeInsets.only(top: 10.0),
                decoration: BoxDecoration(
                  color: Colors.red.withOpacity(0.1),
                ),
                child: Text("customer id:  \n "+widget.customer_id.toString()),

              ),
            ),




            Container(
              height: 50,
              width: 300,
              margin:
              EdgeInsets.only(left: 100, top: 15, bottom: 10, right: 100),
              decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(20)),
              child: FlatButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Payment(widget.customer_id,widget.list[widget.index].id)),
                  );
                },
                child: Text(
                  'Book now',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),



          ]


      )
      );
}}
