import 'package:get/get.dart';
import 'package:my_inventory/add_customer/ui/add_customer.dart';
import 'package:my_inventory/core/constants/name_constants.dart';

navigateFromHomepage({required String title}){
  var titleToPage = {customerN():()=>Get.to(()=>AddCustomer())};
  if(titleToPage[title]!=null){
    titleToPage[title]!();
  }
  // if(title == customerN()){
  //   Get.to(AddCustomer());
  // }
}