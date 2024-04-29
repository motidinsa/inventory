import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/functions/core_functions.dart';
import 'package:my_inventory/core/functions/product/product_functions.dart';
import 'package:my_inventory/core/styles/styles.dart';
import 'package:my_inventory/core/ui/custom_text_field.dart';

import 'package:my_inventory/core/routes/route_names.dart';

class ProductPriceSummary extends StatelessWidget {
  const ProductPriceSummary({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          const Spacer(
            flex: 6,
          ),
          Expanded(
            flex: 6,
            child: Card(
              surfaceTintColor: Colors.white,
              shape: smoothRectangleBorder(
                  radius: 15,
                  side: const BorderSide(color: Colors.green, width: .5)),
              elevation: 3,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    if (Get.currentRoute == RouteName.sales) ...[
                      RichText(
                        text: TextSpan(
                          text: '$subtotalN: ',
                          style: TextStyle(
                              fontWeight: bold(),
                              fontSize: 18,
                              color: Colors.black,
                              fontStyle: FontStyle.italic),
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
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: CustomTextField(
                          title: discountN,
                          labelText: discountN,
                        ),
                      ),
                    ],
                    RichText(
                      text: TextSpan(
                        text: '$totalN: ',
                        style: TextStyle(
                          fontWeight: bold(),
                          fontSize: 18,
                          color: Colors.black,
                          fontStyle: FontStyle.italic,
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
            ),
          )
        ],
      ),
    );
  }
}
