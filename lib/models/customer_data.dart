import 'package:flutter/material.dart';

import 'customer.dart';


class CustomerData extends ChangeNotifier{
  List<Customer> customers =[];

  void addCustomer(String firstname,String lastname,String mobile,String password,String email) async{
   // Customer customer= await Customerservice.addCustomer(firstname, lastname, mobile, password, email);
   //  customers.add(customer);
   //  notifyListeners();

  }
}
