import 'package:flutter/material.dart';
import 'package:mytour/welcome.dart';

import 'Tanzanite.dart';
import 'Malipo.dart';

void main()=>
    runApp(MaterialApp());
class Payment extends StatefulWidget {

  int customer_id;
  int packages_id;
  Payment(this.customer_id,this.packages_id);

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('payment '+widget.customer_id.toString()),
        backgroundColor: Colors.green,
      ),
      body: GridView.count(
      padding: const EdgeInsets.all(20),
    crossAxisSpacing: 10,
    mainAxisSpacing: 10,
    primary:false,
    crossAxisCount:3,

          children: <Widget>[

            InkWell(
    onTap: (){
    Navigator.push(
    context,

    MaterialPageRoute(builder: (context) =>  Malipo(widget.customer_id,widget.packages_id)),
    );

    },
    child:Container(
    height: 270,
    padding: const EdgeInsets.fromLTRB(30,200,0,0),

    decoration:BoxDecoration(
    image:DecorationImage(
    image:AssetImage("images/tigo.gif",),fit:BoxFit.fitHeight
    ),
    ),

    //dds
    // color: Colors.lightBlueAccent,
    ),
    ),
            InkWell(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  Malipo(widget.customer_id,widget.packages_id)),
                );

              },
              child:Container(
                height: 270,
                padding: const EdgeInsets.fromLTRB(30,200,0,0),

                decoration:BoxDecoration(
                  image:DecorationImage(
                      image:AssetImage("images/halotel.jpg",),fit:BoxFit.fitHeight
                  ),
                ),

                //
                // color: Colors.lightBlueAccent,
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  Malipo(widget.customer_id,widget.packages_id)),
                );

              },
              child:Container(
                height: 270,
                padding: const EdgeInsets.fromLTRB(30,400,0,0),

                decoration:BoxDecoration(
                  image:DecorationImage(
                      image:AssetImage("images/ezypesa.jpg",),fit:BoxFit.fitHeight
                  ),


                ),

                //
                // color: Colors.lightBlueAccent,
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  Malipo(widget.customer_id,widget.packages_id)),
                );

              },
              child:Container(
                height: 270,
                padding: const EdgeInsets.fromLTRB(30,400,0,0),

                decoration:BoxDecoration(
                  image:DecorationImage(
                      image:AssetImage("images/M-pesa.png",),fit:BoxFit.fitHeight
                  ),


                ),

                //
                // color: Colors.lightBlueAccent,
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  Malipo(widget.customer_id,widget.packages_id)),
                );

              },
              child:Container(
                height: 270,
                padding: const EdgeInsets.fromLTRB(30,400,0,0),

                decoration:BoxDecoration(
                  image:DecorationImage(
                      image:AssetImage("images/crdb.png",),fit:BoxFit.fitHeight
                  ),


                ),

                //
                // color: Colors.lightBlueAccent,
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  Malipo(widget.customer_id,widget.packages_id)),
                );

              },
              child:Container(
                height: 270,
                padding: const EdgeInsets.fromLTRB(30,400,0,0),


                decoration:BoxDecoration(
                  image:DecorationImage(
                      image:AssetImage("images/Nmb_logo.jpg",),fit:BoxFit.fitHeight
                  ),


                ),

                //
                // color: Colors.lightBlueAccent,
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  Malipo(widget.customer_id,widget.packages_id)),
                );

              },
              child:Container(
                height: 270,
                padding: const EdgeInsets.fromLTRB(30,400,0,0),

                decoration:BoxDecoration(
                  image:DecorationImage(
                      image:AssetImage("images/mastercard.png",),fit:BoxFit.fitHeight
                  ),


                ),

                //
                // color: Colors.lightBlueAccent,
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.push(
                   context,
                  MaterialPageRoute(builder: (context) =>  Malipo(widget.customer_id,widget.packages_id)),
                );

              },
              child:Container(
                height: 270,
                padding: const EdgeInsets.fromLTRB(30,400,0,0),

                decoration:BoxDecoration(
                  image:DecorationImage(
                      image:AssetImage("images/pbz.png",),fit:BoxFit.fitHeight
                  ),


                ),

                //
                // color: Colors.lightBlueAccent,
              ),
            ),










          ]
      ) );
  }
}

