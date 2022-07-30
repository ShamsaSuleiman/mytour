import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mytour/riisti.dart';

void main()=>
    runApp(MaterialApp());
class Order extends StatefulWidget {
  List list;
  int index;
  int customer_id;
  Order({required this.index,required this.list,required this.customer_id});

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),

      body:Container(
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
              MaterialPageRoute(builder: (context) => Recieptt(widget.customer_id,widget.list[widget.index].id)),
            );
          },
          child: Text(
            'Make order  now',
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
        ),
      ),


    );
  }
}
