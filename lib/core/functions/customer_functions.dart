// import 'package:get/get.dart';
// import 'package:my_inventory/add_customer/controller/add_customer_controller.dart';
// import 'package:my_inventory/add_vendor/controller/add_vendor_controller.dart';
//
// onFocusChange(
//     {required String title,
//     required bool hasFocus,
//     required String data,
//     required String redirectFrom}) {
//   if (!hasFocus) {
//     if (redirectFrom == 'Add Customer') {
//       AddCustomerController addCustomerController = Get.find();
//       if (title == 'Customer Name') {
//         addCustomerController.customerDetailList.update((customer) {
//           customer?.name = data;
//         });
//       } else if (title == 'Phone number') {
//         addCustomerController.customerDetailList.update((customer) {
//           customer?.phoneNumber = data;
//         });
//       } else if (title == 'Address') {
//         addCustomerController.customerDetailList.update((customer) {
//           customer?.address = data;
//         });
//       } else if (title == 'City') {
//         addCustomerController.customerDetailList.update((customer) {
//           customer?.city = data;
//         });
//       } else if (title == 'Email') {
//         addCustomerController.customerDetailList.update((customer) {
//           customer?.email = data;
//         });
//       }
//     } else if (redirectFrom == 'Add Vendor') {
//       AddVendorController addVendorController = Get.find();
//       if (title == 'Vendor Name') {
//         addVendorController.vendorDetail.update((customer) {
//           customer?.name = data;
//         });
//       } else if (title == 'Phone number') {
//         addVendorController.vendorDetail.update((customer) {
//           customer?.phoneNumber = data;
//         });
//       } else if (title == 'Address') {
//         addVendorController.vendorDetail.update((customer) {
//           customer?.address = data;
//         });
//       } else if (title == 'City') {
//         addVendorController.vendorDetail.update((customer) {
//           customer?.city = data;
//         });
//       } else if (title == 'Email') {
//         addVendorController.vendorDetail.update((customer) {
//           customer?.email = data;
//         });
//       } else if (title == 'Contact person') {
//         addVendorController.vendorDetail.update((customer) {
//           customer?.contactPerson = data;
//         });
//       }
//     }
//   }
// }
