import '../../sales/functions/sales_functions.dart';
import '../constants/name_constants.dart';

getSubtotal({required String currentPage}){
  if(currentPage == salesN()){
    return getSalesSubtotal();
  }else if(currentPage == purchaseN()){

  }
}