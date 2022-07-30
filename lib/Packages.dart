import 'dart:convert';
import 'dart:ffi';
import 'dart:io';
import 'dart:math';
import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'Tanzanite.dart';
import 'api.dart';

// void main() {
//   runApp(MyApp());
// }

class MyApp extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: MyHomePage(widget.customer_id),
    );
  }
}

class MyHomePage extends StatefulWidget {
  int customer_id;

  MyHomePage(this.customer_id);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Future<List<Packegas>> getpackegas()async {
    var url=Uri.parse(appurl+'tourismpackegasAPI/Viewpackages');
    var response =
    await http.get(url);
    var jsonData = jsonDecode(response.body);
    List<Packegas> pack = [];
    for (var u in jsonData) {
      Packegas packegas = Packegas(
          u["name"],u["description"], u["startdate"],
          u["finishdate"],u["image"],u["id"]);
      pack.add(packegas);

    }
    print(pack.length);
    return pack;
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(appBar: AppBar(
      title: Text('Packages'+ widget.customer_id.toString()),
      actions: [],),
      body: FutureBuilder<List<Packegas>>(
          future: getpackegas(),
          builder: (context, snapshot){
            if(snapshot.hasError) print(snapshot.error);
            return snapshot.hasData
                ? ItemList(
              list: snapshot.data!,
              customer_id: widget.customer_id,
            )
                :Center(
              child: CircularProgressIndicator(),
            );
          }),
    );
  }
}
class ItemList extends StatelessWidget {
  final List<Packegas> list;
  final int customer_id;
  const ItemList({Key? key, required this.list,required this.customer_id}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return Scaffold(

        body:ListView.builder(
            itemCount: list == null ? 0: list.length,
            itemBuilder: (context,  i)

            {
              
              return Column(
                mainAxisAlignment:MainAxisAlignment.center,

                children: [
                  Container(
                    child: Text(list[i].name,
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center),
                    height: 80,
                    padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),


                  ),

                  InkWell(
                    onTap: ()=> Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              Tanzanite(
                                list:list,
                                index: i,
                                customer_id: customer_id,
                              )),),

                    child:Container(
                      height: 270,
                      padding: const EdgeInsets.fromLTRB(30,200,0,0),

                      decoration:BoxDecoration(
                        image:DecorationImage(
                          image: new MemoryImage(Base64Decoder().convert(list[i].image)),fit:BoxFit.fitHeight

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
                          MaterialPageRoute(builder: (context) =>  Tanzanite(
                            list: list,
                            index: i,
                            customer_id: customer_id,
                          )),
                        );



                      },
                    ),
                  ),

                ],
              );



            }





        ) );
  }
}

class Packegas {
  final String name, description;
  final String startdate, finishdate,image;
  final int id;
  // final double cost;

  Packegas(this.name, this.description,this.startdate,
      this.finishdate,this.image,this.id);

  void add(Packegas packegas) {}

}
