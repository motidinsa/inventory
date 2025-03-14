class VendorModel {
  String name;
  String? phoneNumber;
  String? address;
  String? city;
  String? email;
  String? contactPerson;

  VendorModel({
    required this.name,
    this.address,
    this.city,
    this.phoneNumber,
    this.email,
    this.contactPerson,
  });
}
