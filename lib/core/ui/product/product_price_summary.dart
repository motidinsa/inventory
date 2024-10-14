import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/functions/product/product_functions.dart';
import 'package:my_inventory/core/styles/styles.dart';
import 'package:my_inventory/core/ui/custom_text_field.dart';

import 'package:my_inventory/core/routes/route_names.dart';

import 'package:my_inventory/core/functions/helper_functions.dart';
import 'package:my_inventory/core/ui/shadowed_container.dart';

import '../custom_text_field_2.dart';

class ProductPriceSummary extends StatelessWidget {
  const ProductPriceSummary({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ShadowedContainer(
      padding: EdgeInsets.symmetric(horizontal: 10),
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            if (Get.currentRoute == RouteName.addSales) ...[
              RichText(
                text: TextSpan(
                  text: '$subtotalN: ',
                  style: TextStyle(
                      fontWeight: bold(),
                      fontSize: 17,
                      color: Colors.grey.shade800,
                  ),
                  // style: DefaultTextStyle.of(context).style,
                  children: <TextSpan>[
                    TextSpan(
                      text: getFormattedNumberWithComa(double.parse(
                        getSubtotal(),
                      )),
                      style: TextStyle(color: Colors.green.shade800),
                    ),
                    // TextSpan(text: ' world!'),
                  ],
                ),
              ),
               Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: CustomTextField2(
                  title: discountN,
                  // labelText: discountN,
                ),
              ),
            ],
            RichText(
              text: TextSpan(
                text: '$totalN: ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                  color: Colors.grey.shade800,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: getFormattedNumberWithComa(
                        double.parse(getTotal())),
                    style: TextStyle(color: Colors.green.shade800),
                  ),
                  // TextSpan(text: ' world!'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
