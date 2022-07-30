import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'Packages.dart';
import 'Receipt.dart';
import 'api.dart';



class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {

  String errormsg="";
  late bool error, showprogress;
  String controlno="";

  var _controlno = TextEditingController();
  var _password = TextEditingController();

//function to check username or password is correct or not
  startLogin() async {
    String apiurl ="Controlnumber/control/controlno/"+controlno; //api url
    //String apiurl = "http://192.168.50.112/pdo/test_login.php";
    //dont use http://localhost , because emulator don't get that address
    //insted use your local IP address or use live URL
    //hit "ipconfig" in windows or "ip a" in linux to get you local IP
    var response = await http.get(Uri.parse(appurl+apiurl));

    if(response.statusCode == 200){
      var jsondata = json.decode(response.body);
      print(jsondata);
      if(jsondata["controlno"].toString() == null){
        setState(() {
          showprogress = false; //don't show progress indicator
          error = true;
          errormsg = "well";
        });
      }else{
        if(jsondata["controlno"].toString() != null){
          setState(() {
            error = false;
            showprogress = false;

          });


          String controlno = jsondata["controlno"];

          print(controlno);


          Map results = await Navigator.of(context)
              .push(MaterialPageRoute(builder: (BuildContext context) {
            return Receipt();
          })
          );
          //user shared preference to save data
        }else{
          showprogress = false; //don't show progress indicator
          error = true;
          errormsg = "Something went wrong.";
        }
      }
    }else{
      setState(() {
        showprogress = false; //don't show progress indicator
        error = true;
        errormsg = "Error during connecting to server.";
      });
    }
  }

  @override
  void initState() {
    controlno = "";
    error = false;
    showprogress = false;

    //_username.text = "defaulttext";
    //_password.text = "defaultpassword";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.transparent
      //color set to transperent or set your own color
    ));

    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            // ignore: prefer_const_literals_to_create_immutables
            actions: <Widget>[],
            title: Text(""),
            backgroundColor: Colors.blue,
           pinned: true
          ),
          SliverFixedExtentList(
            itemExtent: 80,
            delegate: SliverChildListDelegate([


              Divider(),
              Container(
                width: 370,
                margin:
                EdgeInsets.only(left: 20, top: 10, bottom: 20, right: 20),
                child: TextField(

                  controller: _controlno,
                  decoration: InputDecoration(
                    labelText: "controlno",
                    border: OutlineInputBorder(),
                    hintText: "Enter control number",
                    prefixIcon: Icon(Icons.money),
                  ),
                  onChanged: (value){
                    //set username  text on change
                    controlno = value;
                  },
                ),
              ),

              Container(
                height: 50,
                width: 300,
                margin:
                EdgeInsets.only(left: 20, top: 15, bottom: 10, right: 20),
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20)),
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      //show progress indicator on click
                      showprogress = true;
                    });
                    startLogin();
                    //Navigator.of(context).push(MaterialPageRoute(builder: (context)=>firstpage(username: _username.text, password: _password.text)));
                  },
                  child: Text(
                    'Confirm',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              ),



            ]),

            //]),
          ),
        ],
      ),
    );
  }


}

