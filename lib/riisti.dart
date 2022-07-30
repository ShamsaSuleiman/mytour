import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


import 'api.dart';
class Recieptt extends StatefulWidget {
 final int customerid;
 final int packageid;


 Recieptt(this.customerid,this.packageid);

 @override
  _ReciepttState createState() => _ReciepttState();
}

class _ReciepttState extends State<Recieptt> {
  Future <Order> getOder(int customerid,int packageid) async {
    var url=Uri.parse(appurl+"Touristorder/customerdetails/cust_id/"+customerid.toString()+"/p_id/"+packageid.toString());
    var response= await http.get(url);
    var data = jsonDecode(response.body);
    print(response.body);
    Order order = Order(data["packname"], data["firstname"], data["lastname"], data["id"], data["customerid"], data["packageid"], data["cost"]);
    return order;
  }
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: FutureBuilder<Order>(
   future: getOder(widget.customerid, widget.packageid),
    builder: (context, snapshot){
    if(snapshot.hasError) print(snapshot.error);
    return snapshot.hasData
    ? reciept(
        order: snapshot.data!
    )
        :Center(
    child: CircularProgressIndicator(),
    );
    }),
   );
  }
}

class reciept extends StatelessWidget{
final Order order;
const reciept({Key? key, required this.order}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  Scaffold(


      body:SingleChildScrollView(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Container(

              margin: const EdgeInsets.fromLTRB(30,165,30,160),
              height: 450,
              decoration:BoxDecoration(
                // color: Colors.lightBlueAccent,
                border:Border.all(
                  //color:Colors.blue,
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child:Column(
                children: [
                  Container(
                    margin:const EdgeInsets.fromLTRB(10,10, 10, 10),
                    //color:Colors.white10,
                    child:const Text("ZANZIBAR TOURISM PAYMENTS\n\t\t\t \t\t\t\t\t\t\t\t\t\t    RECEIPT",
                      style:TextStyle(fontFamily: 'SFUIDisplay',fontSize:18,fontWeight:FontWeight.bold ,
                          color:Colors.redAccent ),),
                  ),

                  Container(
                    padding: const EdgeInsets.fromLTRB(10, 40, 50, 5),

                    child:RichText(
                      text: TextSpan(
                          children: [
                            TextSpan(
                                text: "Customer:",
                                style:TextStyle(
                                    fontFamily: 'SFUIDisplay',
                                    color:Colors.green,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold
                                )
                            ),

                            TextSpan(
                                text: "   "+ order.firstname+" "+order.lastname,
                                style: TextStyle(
                                  color:Color(0xffff2d55),
                                  fontSize: 15,

                                )
                            )
                          ]
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(10, 40, 50, 5),

                    child:RichText(
                      text:  TextSpan(
                          children: [
                            TextSpan(
                                text: "Package:",
                                style:TextStyle(
                                    fontFamily: 'SFUIDisplay',
                                    color:Colors.green,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold
                                )
                            ),

                            TextSpan(
                               text: "   " +order.packname.toString(),
                                style: TextStyle(
                                  color:Color(0xffff2d55),
                                  fontSize: 15,

                                )
                            )
                          ]
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(10, 40, 50, 5),

                    child:RichText(
                      text: const TextSpan(
                          children: [
                            TextSpan(
                                text: "Date:",
                                style:TextStyle(
                                    fontFamily: 'SFUIDisplay',
                                    color:Colors.green,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold
                                )
                            ),

                            TextSpan(
                                text: "   ____________________",
                                style: TextStyle(
                                  color:Color(0xffff2d55),
                                  fontSize: 15,

                                )
                            )
                          ]
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(10, 40, 50, 5),

                    child:RichText(
                      text: TextSpan(
                          children: [
                            TextSpan(
                                text: "Cost:",
                                style:TextStyle(
                                    fontFamily: 'SFUIDisplay',
                                    color:Colors.green,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold
                                )
                            ),

                            TextSpan(
                                text: "   "+order.cost.toString(),
                                style: TextStyle(
                                  color:Color(0xffff2d55),
                                  fontSize: 15,

                                )
                            )
                          ]
                      ),
                    ),
                  ),
                  const SizedBox(height: 40,width: 120,),
                  Container(
                    height: 50,
                    margin:const EdgeInsets.only(left: 150),
                    decoration:const BoxDecoration(
                      image:DecorationImage(
                        image:AssetImage('images/BARCODES.png'),
                        fit:BoxFit.fitHeight,
                      ), shape:BoxShape.rectangle,

                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10,)
          ],
        ),
      ),
    );
  }

}

class Order{
 final String packname,firstname,lastname;
 final int id,customerid,packageid;
 final double cost;

 Order(this.packname, this.firstname, this.lastname, this.id, this.customerid,
      this.packageid, this.cost);
}