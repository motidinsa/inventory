import 'package:flutter/material.dart';
import 'package:my_inventory/core/ui/product/product_text_field.dart';

import '../../../sales/functions/sales_functions.dart';
import '../../constants/name_constants.dart';
import '../../styles/styles.dart';

class ProductPriceSummary extends StatelessWidget {
  final String currentPage;

  const ProductPriceSummary({
    super.key,
    required this.currentPage,
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
                            text: getSalesSubtotal(),
                            style: TextStyle(color: Colors.grey.shade600),
                          ),
                          // TextSpan(text: ' world!'),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: ProductTextField(
                        currentPage: currentPage,
                        title: discountN(),
                        labelText: discountN(),
                      ),
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
                            text: getSalesTotal(),
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
    );
  }
}
