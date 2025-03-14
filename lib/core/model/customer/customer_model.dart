class CustomerModel {
  String name;
  String? phoneNumber;
  String? address;
  String? city;
  String? email;

  CustomerModel({
    required this.name,
    this.address,
    this.city,
     this.phoneNumber,
    this.email,
  });
}
