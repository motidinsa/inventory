class CustomerModel {
    String name;
    String? address;
    String? city;
    String phoneNumber;
    String? email;

  CustomerModel({
    required this.name,
    this.address,
    this.city,
    required this.phoneNumber,
    this.email,
  });
}
