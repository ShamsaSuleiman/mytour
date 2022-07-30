import 'package:flutter/material.dart';
import 'package:mytour/welcome.dart';




void main()=>
    runApp(const MaterialApp());
class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _navigatetologin();
  }

  _navigatetologin() async{
    await Future.delayed(const Duration(milliseconds: 2000),(){});
    Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>Page1()));
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(37.0),
            child: Center(
                child: Text(
                  "",
                  textAlign: TextAlign.center,
                )),
          ),
          SizedBox(
            height: 50,
          ),

          SizedBox(
            height: 50,
          ),
          ClipOval(
            child: Image.asset("images/lg3.jpg"),
          ),
        ],
      ),
    );
  }
}
    // return Scaffold(
    //   backgroundColor: Colors.green,
    //   appBar: AppBar(
    //     title: const Text('znz'),
    //   ),
    //   body:
    //   ClipOval(
    //     child: Image.asset(
    //       'images/lgn2.jpg',
    //       fit: BoxFit.cover,
    //       width: 120,
    //       height: 120,
    //     ),
    //   ),
    //
    //
    // );

