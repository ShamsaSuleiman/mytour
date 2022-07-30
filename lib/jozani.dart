import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()=>
    runApp(MaterialApp());
class jozani extends StatefulWidget {
  const jozani({Key? key}) : super(key: key);

  @override
  _jozaniState createState() => _jozaniState();
}

class _jozaniState extends State<jozani> {
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
                  child:Text("JOZANI FOREST",style:TextStyle(fontSize:16.0,color:Colors.black)),),
              Container(
                margin:EdgeInsets.all(8.0),
                child:Text("The Jozani Chwaka Bay National Park is a 50 km2 (19 sq mi) national park in Tanzania located on the island of Zanzibar. It is the only national park in Zanzibar. ",
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
                child:Text("JOZANI FOREST",style:TextStyle(fontSize:16.0,color:Colors.black)),),
              Container(
                  margin:EdgeInsets.all(8.0),
                  child:Text(" The Zanzibar red colobus, Procolobus kirkii (its population count is about 1000[2]) found in the park, a rain forest species (unlike the black-and-white colobus found in other regions of Africa), is also known as Kirk's red colobus, named after Sir John Kirk, the British Resident of Zanzibar who had first brought it to the attention of zoological science.[3][4] It is now adopted as the flagship species for conservation in Zanzibar, from the mid-1990s.[5] Other species of fauna found in the park are the Sykes monkey, bush babies, more than 50 species of butterfly and 40 species of birds.[3] The nocturnal Zanzibar tree hyrax, which has four ‘toes’ on its front feet and three on its back, is said to be the first hyrax species that has acclimatized to the forest.[6] As part of the tourism circuit, the park attracts 10% of the over 100,000 visitors to Zanzibar every year. Wild life attractions of Zanzibar also include dolphins apart from deep sea fishing for tuna, marlin, and shark.[7]",
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
