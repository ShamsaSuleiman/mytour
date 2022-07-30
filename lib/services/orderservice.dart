import 'dart:convert';

import 'package:http/http.dart'as http;

import '../api.dart';
class OrderService{
  static Future<http.Response> makeOrder(int package_id,int customer_id) async{
    var url=Uri.parse(appurl+'Touristorder/addOrder');
    Map data={
      "customerid":'$customer_id',
      "packageid":'$package_id',

    };
    var body=json.encode(data);
    var response= await http.post(url,headers:{"content-Type":"application/json"},body: body);
    print("${response.body}");
    return response;
  }













}