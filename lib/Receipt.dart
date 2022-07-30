import 'package:http/http.dart' as http;




// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// void main()=>
//     runApp(MaterialApp());
// class Receipt extends StatefulWidget {
//   const Receipt({Key? key}) : super(key: key);
//
//   @override
//   State<Receipt> createState() => _ReceiptState();
// }
//
// class _ReceiptState extends State<Receipt> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//
//       body:SingleChildScrollView(
//         child:Column(
//           mainAxisAlignment:MainAxisAlignment.center,
//
//           children: [
//             Container(
//              margin: EdgeInsets.fromLTRB(100, 50, 100, 10),
//               decoration: BoxDecoration(
//                 border:Border.all(
//                   color:Colors.red,
//                 ),
//                 borderRadius:BorderRadius.circular(10.0),
//               ),
//
//
//               child:Center(
//
//                 child:Text("ZANZIBAR TOURISM\n 07777776555 \n ZANZIBAR \n",style:TextStyle(color:Colors.blue,fontSize:15,fontWeight:FontWeight.bold,)),
//
//               ),
//
//
//
//
//             ),
//             Container(
//               decoration: BoxDecoration(
//                 image:DecorationImage(
//                     image:AssetImage("images/Nmb_logo.jpg",),fit:BoxFit.fitHeight
//                 ),
//             )
//
//             )
//         ]
//       ),
//
//     //     body: Column(children: <Widget>[
//     //       Row(
//     //         mainAxisAlignment: MainAxisAlignment.spaceAround,
//     //         children: [
//     //           Expanded(
//     //             child: Column(
//     //               children: <Widget>[
//     //                 Image.asset(
//     //                   'images/kendwa.jpg',
//     //                 ),
//     //                 Text('cat')
//     //               ],
//     //             ),
//     //           ),
//     //           Expanded(
//     //             child: Column(
//     //               children: <Widget>[
//     //                 Image.asset('images/kendwa.jpg'),
//     //                 Text('cat')
//     //               ],
//     //
//     //             ),
//     //           ),
//     //           Expanded(
//     //
//     //             child: Column(
//     //               children: <Widget>[
//     //                 Text('cat'),
//     //                 Image.asset('images/kendwa.jpg'),
//     //
//     //               ],
//     //             ),
//     //           ),
//     //         ],
//     //       ),
//     //       Padding(
//     //         padding: const EdgeInsets.only(top: 150.0,left: 30.0,bottom: 150.0),
//     //
//     //         child: Container(
//     //           padding: EdgeInsets.only(top: 20.0),
//     //           decoration: BoxDecoration(
//     //             color: Colors.red.withOpacity(0.1),
//     //           ),
//     //           child: Text("ZANZIBAR TOURISM\n CUSTOMER RECEIPT & TICKETING \n "
//     //               "1.Fungua menu ya simu yako  \n 2.Chagua Tuma pesa \n 3 kwa tigo pesa  / 5 lipa namba \n 6 kiasi cha kulipa \n 7 ingiza namba ya siri kukamilisha malipo "),
//     //
//     //
//     //         )
//     //       ) ]
//     //
//     //
//     //
//     //
//     //
//     //
//     // ),
//
//
//
//
//
//     ),
//     );
//
//
//
//
//
//
//
//   }
// }



import 'package:flutter/material.dart';

import 'api.dart';
class Receipt extends StatefulWidget {
  const Receipt({Key? key}) : super(key: key);


  @override
  _ReceiptState createState() => _ReceiptState();
}

class _ReceiptState extends State<Receipt> {
  Future <http.Response> getOder(int customerid,int packageid) async {
    var url=Uri.parse(appurl+"Touristorder/customerdetails/cust_id/"+customerid.toString()+"/p_id/"+packageid.toString());
    var response= await http.get(url);
    print(response);
    return response;
  }
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
                      text: const TextSpan(
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
                      text: const TextSpan(
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
                      text: const TextSpan(
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


