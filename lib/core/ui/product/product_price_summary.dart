import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/functions/core_functions.dart';
import 'package:my_inventory/core/functions/product/product_functions.dart';
import 'package:my_inventory/core/styles/styles.dart';
import 'package:my_inventory/core/ui/product/product_text_field.dart';

class ProductPriceSummary extends StatelessWidget {
  final String currentPage;

  const ProductPriceSummary({
    super.key,
    required this.currentPage,
  });

  @override
  Widget build(BuildContext context) {
    return Obx(() => Padding(
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
                        if (currentPage == salesN())
                          RichText(
                            text: TextSpan(
                              text: '${subtotalN()}: ',
                              style: TextStyle(
                                  fontWeight: bold(),
                                  fontSize: 18,
                                  color: Colors.black,
                                  fontStyle: FontStyle.italic),
                              // style: DefaultTextStyle.of(context).style,
                              children: <TextSpan>[
                                TextSpan(
                                  text: getFormattedNumberWithComa(double.parse(
                                    getSubtotal(
                                      currentPage: currentPage,
                                    ),
                                  )),
                                  style: TextStyle(color: Colors.grey.shade600),
                                ),
                                // TextSpan(text: ' world!'),
                              ],
                            ),
                          ),
                        if (currentPage == salesN())
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: currentPage == salesN()
                                ? ProductTextField(
                                    currentPage: currentPage,
                                    title: discountN(),
                                    labelText: discountN(),
                                  )
                                : null,
                          ),
                        RichText(
                          text: TextSpan(
                            text: '${totalN()}: ',
                            style: TextStyle(
                              fontWeight: bold(),
                              fontSize: 18,
                              color: Colors.black,
                              fontStyle: FontStyle.italic,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text: getFormattedNumberWithComa(double.parse(
                                    getTotal(currentPage: currentPage))),
                                style: TextStyle(color: Colors.grey.shade600),
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
        ));
  }
}
