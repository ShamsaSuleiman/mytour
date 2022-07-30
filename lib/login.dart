import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:mytour/Receipt.dart';
import 'package:mytour/signin.dart';
import 'Packages.dart';
import 'api.dart';
import 'main.dart';


class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {

  String errormsg="";
  late bool error, showprogress;
  String username="", password="";

  var _username = TextEditingController();
  var _password = TextEditingController();

//function to check username or password is correct or not
  startLogin() async {
    String apiurl ="customer/login/email/"+username+"/password/"+password; //api url
    print(username);
    print(password);
    //String apiurl = "http://192.168.50.112/pdo/test_login.php";
    //dont use http://localhost , because emulator don't get that address
    //insted use your local IP address or use live URL
    //hit "ipconfig" in windows or "ip a" in linux to get you local IP
    var response = await http.get(Uri.parse(appurl+apiurl));

    if(response.statusCode == 200){
      var jsondata = json.decode(response.body);
      print(jsondata);
      if(jsondata["email"].toString() == null){
        setState(() {
          showprogress = false; //don't show progress indicator
          error = true;
          errormsg = "jooooooooooooooooooooo";
        });
      }else{
        if(jsondata["email"].toString() != null){
          setState(() {
            error = false;
            showprogress = false;

          });
          //save the data returned from server
          //and navigate to home page
          int id= jsondata["id"];
          String fname = jsondata["firstname"];
          String lname = jsondata["lastname"];
          String email = jsondata["email"];
          String phone = jsondata["mobile_no"];
          // String username = jsondata["username"];
          String password = jsondata["password"];


          // Fluttertoast.showToast(msg: "welcome to my flutter");
          // Map results = await Navigator
          //     .of(context)
          //     .push(new MaterialPageRoute<dynamic>(builder: (BuildContext context) {
          //   return new firstpage(username: '', password: '',);
          // }));

          //you can use this fuction
          Map results = await Navigator.of(context)
              .push(MaterialPageRoute(builder: (BuildContext context) {
            return MyHomePage(id);
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
    username = "";
    password = "";
    errormsg = "";
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
            //expandedHeight: 100.0,
            //floating: true,
            //pinned: true
          ),
          SliverFixedExtentList(
            itemExtent: 80,
            delegate: SliverChildListDelegate([
              Container(
                margin: EdgeInsets.only(
                  top: 30,
                ),
                child: const Text(
                  "LOGIN HERE",
                  style: TextStyle(fontSize: 32, color: Colors.blue),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                margin: EdgeInsets.only(),
                child: Icon(
                  Icons.account_circle,
                  color: Colors.blue,
                  size: 100,
                ),
              ),
              Divider(),
              Container(
                width: 370,
                margin:
                EdgeInsets.only(left: 20, top: 10, bottom: 20, right: 20),
                child: TextField(
                  //onSaved: (input)=>requestd.username =input!,
                  controller: _username,
                  decoration: InputDecoration(
                    labelText: "UserName",
                    border: OutlineInputBorder(),
                    hintText: "Enter UserName",
                    prefixIcon: Icon(Icons.person),
                  ),
                  onChanged: (value){
                    //set username  text on change
                    username = value;
                  },
                ),
              ),
              Container(
                width: 370,
                margin:
                EdgeInsets.only(left: 20, top: 10, bottom: 20, right: 20),
                child: TextField(
                  //onSaved: (input)=>requestd.password =input!,
                  obscureText: true,
                  controller: _password,
                  decoration: InputDecoration(
                    labelText: "Password",
                    border: OutlineInputBorder(),
                    hintText: "Enter Password",
                    prefixIcon: Icon(Icons.lock),
                  ),
                  onChanged: (value){
                    //set username  text on change
                    password = value;
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
                    'Login',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              ),
              Container(                height: 50,

                width: 300,
                margin:
                EdgeInsets.only(left: 20, top: 15, bottom: 10, right: 20),
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(20)),
                child: FlatButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Signin  ()),
                    );
                  },
                  child: Text(
                    'Registered Here',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),


              ),

              // Container(
              //     height: 50,
              //     width: 300,
              //     margin:
              //     EdgeInsets.only(left: 20, top: 15, bottom: 10, right: 20),
              //     decoration: BoxDecoration(
              //         color: Colors.blue,
              //         borderRadius: BorderRadius.circular(30)),
              //     child:ElevatedButton(onPressed: (){
              //       Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Welcome(username: _username.text, password: _password.text)));
              //     }, child: Text('Go Next Page'))
              // ),


            ]),

            //]),
          ),
        ],
      ),
    );
  }

// Widget errmsg(String text){
//   //error message widget.
//   return Container(
//     padding: EdgeInsets.all(15.00),
//     margin: EdgeInsets.only(bottom: 10.00),
//     decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(30),
//         color: Colors.red,
//         border: Border.all(color:Colors.red, width:2)
//     ),
//     child: Row(children: <Widget>[
//       Container(
//         margin: EdgeInsets.only(right:6.00),
//         child: Icon(Icons.info, color: Colors.white),
//       ), // icon for error message
//
//       Text(text, style: TextStyle(color: Colors.white, fontSize: 18)),
//       //show error message text
//     ]),
//   );
// }
}

