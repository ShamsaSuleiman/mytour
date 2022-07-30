import 'package:flutter/material.dart';
import 'package:mytour/services/customerservice.dart';


void main()=>
    runApp(MaterialApp());
class Signin extends StatefulWidget {

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  final TextEditingController firstname=TextEditingController();
  final TextEditingController lastname=TextEditingController();
  final TextEditingController mobile=TextEditingController();
  final TextEditingController password=TextEditingController();
  final TextEditingController email=TextEditingController();
  Customerservice cservice=new Customerservice();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child:ListView(padding:const EdgeInsets.only(
          top: 65,left: 12.0, right:12.0, bottom:12.0),
        children: [
          Container(
            height: 50,
            child: TextField(
              controller: firstname,
              decoration: InputDecoration(
                labelText: 'firstname',
                hintText: 'firstname',
                icon: new Icon(Icons.person),
              ),
            ),
          ),
          Container(
            height: 50,
            child: TextField(
              controller: lastname,
              decoration: InputDecoration(
                labelText: 'lastname',
                hintText: 'lastname',
                icon: new Icon(Icons.person),

              ),
            ),
          ),
          Container(
            height: 50,
            child: TextField(
              controller: mobile,
              decoration: InputDecoration(
                labelText: 'mobile',
                hintText: 'mobile',
                icon: new Icon(Icons.contact_phone),

              ),
            ),
          ),
          Container(
            height: 50,
            child: TextField(
              controller: password,
              decoration: InputDecoration(
                labelText: 'password',
                hintText: 'password',
                icon: new Icon(Icons.lock),

              ),
            ),
          ),
          Container(
            height: 50,
            child: TextField(
              controller: email,
              decoration: InputDecoration(
                labelText: 'email',
                hintText: 'email',
                icon: new Icon(Icons.email),

              ),
            ),
          ),
          Padding(padding: new EdgeInsets.only(top: 44.0),
          ),
          Container(
            height:50,
            child: RaisedButton(
                onPressed:(){
                Customerservice.addCustomer(firstname.text.trim(), lastname.text.trim(), mobile.text.trim(), password.text.trim(), email.text.trim());
                Navigator.pop(context,true);
            },
                color:Colors.blue,
                child:Text('add', style: TextStyle(
                  color: Colors.white,backgroundColor: Colors.blue,
                )),),),
        ],)


      ),


    );
  }
}

