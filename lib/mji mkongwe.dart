import 'package:flutter/material.dart';

void main()=>
    runApp(MaterialApp());
class Mjimkongwe extends StatefulWidget {
  const Mjimkongwe({Key? key}) : super(key: key);

  @override
  _MjimkongweState createState() => _MjimkongweState();
}

class _MjimkongweState extends State<Mjimkongwe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),
      body: Container(
          child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child:Column(
                  mainAxisAlignment:MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:<Widget>[
                    SizedBox(height: 20),
                    Container(
                      margin:EdgeInsets.all(8.0),
                      child:Text("FORODHANI",style:TextStyle(fontSize:16.0,color:Colors.black)),),
                    Container(
                        margin:EdgeInsets.all(8.0),
                        child:Text("The Forodhani Gardens (also known as Jubilee Gardens and more recently as Forodhani Park)[1] is a small park in the historical city of Stone Town, Zanzibar, Tanzania. The gardens are located along the main seawalk of Stone Town, just in front of the most famous buildings of Stone Town, i.e., the House of Wonders and the Old Fort.The Gardens are especially busy after sunset, when tourists and local alike gather in a popular food street market in the main square, to have dinner enjoying Swahili and Zanzibari cuisine delicacies such as grilled seafood, samoosas, cassava and sweet potatoes.[2]  ",
                          style:TextStyle(color:Colors.black,fontSize:20.0),

                        )
                    ),
                    Container(
                      padding: const EdgeInsets.all(20),
                      child: Image.asset(
                        "images/kima.jpg",fit:BoxFit.fill,
                      ),
                      // color: Colors.lightBlueAccent,
                    ),


                    Container(
                        margin:EdgeInsets.all(8.0),
                        child:Text(" On July 31, 2009, a ground-breaking ceremony was held by the Aga Khan to introduce a revitalized park. It was rehabilitated by Aga Khan Trust for Culture (AKTC) at a cost of Dolla 3 million (Sh3.9 billion) from the initial estimates of Dolla 2.4 million (over Sh3 billion). The facelift involved the restoration of pedestrian walkways, landscape, infrastructure upgrading, incorporating lighting, sewerage drainage and civic amenities, and the rehabilitation of the seawall fronting the park.[3] ",
                          style:TextStyle(color:Colors.black,fontSize:20.0),

                        )
                    ),
                    Container(
                        margin:EdgeInsets.all(8.0),
                        child:Text(" Another animal in the forests of the Unguja Island unequaled elsewhere is the Zanzibar leopard (Panthera pardus adersi).[6] In the local legend, this reportedly extinct species, has been given a mythical status and is called 'Chui' and is part of the superstitious beliefs of the people. People believe that sorcerers keep this animal as their pet and scare people by spinning stories that the animal appears like spirits and disappears into thin air.[6] It was last reported in 1999 and officials, and men working on the “coral rag” lands of the southern and eastern Ungula Island are assertive that the species is not extinct, though it has not been sighted since 2003. The last sighting reported in 2002-2003 was of two leopards. Photographs of live examples of the species are not known to exist, although a stuffed example is a museum display in Zanzibar Museum, and a few skins exist in museums in London and Massachusetts. Trail camera footage from a 2018 American documentary television series does appear to have captured proof of the leopard's existence and will undoubtedly spark renewed interest and further protective enforcements. A smaller leopard with spots, which is a biological product of the larger animal, is seen now in the island.[8]",
                          style:TextStyle(color:Colors.black,fontSize:20.0),

                        )
                    ),
                    Container(
                        margin:EdgeInsets.all(8.0),
                        child:Text(" The sea grass beds of the Chwaka Bay, fringed with mangrove forests, are important breeding grounds for marine organisms, including open sea fish species. The mangroves are also good breeding grounds for birds. An Integrated Conservation and Development (ICD) planning for the area is under consideration. The bay is also proposed to be declared a Ramsar Site and is placed on the Tanzanian Tentative List for World Heritage Sites to recognize its unique natural and cultural assets with due consideration of proposed conservation efforts.[9] ",
                          style:TextStyle(color:Colors.black,fontSize:20.0),

                        )
                    )





                  ]

              )

          )
      ),



    );
  }
}
