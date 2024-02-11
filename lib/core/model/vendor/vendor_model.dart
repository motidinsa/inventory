class VendorModel {
  String name;
  String? address;
  String? city;
  String phoneNumber;
  String? email;
  String? contactPerson;

  VendorModel({
    required this.name,
    this.address,
    this.city,
    required this.phoneNumber,
    this.email,
    this.contactPerson,
  });
}
