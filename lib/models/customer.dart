class Customer {
  int id;
  String firstname;
  String lastname;
  String mobile_no;
  String password;
  String email;

  Customer(
      {required this.id,
      required this.firstname,
      required this.lastname,
      required this.mobile_no,
      required this.password,
      required this.email});

  factory Customer.fromMap(Map customerMap) {
    return Customer(
      id: customerMap['id'],
      firstname: customerMap['firstname'],
      lastname: customerMap['lastname'],
      mobile_no: customerMap['mobile_no'],
      password: customerMap['password'],
      email: customerMap['email'],
    );
  }
}
