import 'package:get/get.dart';
import 'package:my_inventory/sales/controller/sales_controller.dart';
import 'package:pdf/pdf.dart';

import 'package:my_inventory/core/model/sales/sales_model.dart';
import 'package:pdf/widgets.dart' as p;

import 'package:my_inventory/core/functions/helper_functions.dart';

p.Widget generateSalesData() {
  List<p.Widget> salesData = [];
  SalesController salesController = Get.find();
  for (int i = 0; i < salesController.salesModels.length; i++) {
    SalesModel salesModel = salesController.salesModels[i];
    salesData.addAll(
      [
        p.Container(
          color: i.isOdd ? PdfColor.fromHex('eeeeee') : null,
          padding: const p.EdgeInsets.symmetric(vertical: 10),
          child: p.Row(
            children: [
              p.Expanded(
                child: p.Text(
                  '${i + 1}',
                  textAlign: p.TextAlign.center,
                  style: const p.TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              p.Expanded(
                flex: 4,
                child: p.Text(
                  salesModel.productName,
                  textAlign: p.TextAlign.center,
                  style: const p.TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              p.Expanded(
                flex: 2,
                child: p.Text(
                  getFormattedNumberWithComa(double.parse(salesModel.quantity)),
                  textAlign: p.TextAlign.center,
                  style: const p.TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              p.Expanded(
                flex: 2,
                child: p.Text(
                  getFormattedNumberWithComa(double.parse(salesModel.price)),
                  textAlign: p.TextAlign.center,
                  style: const p.TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              p.Expanded(
                flex: 2,
                child: p.Text(
                  getFormattedNumberWithComa(salesModel.totalAmount),
                  textAlign: p.TextAlign.center,
                  style: const p.TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
        ),
        p.SizedBox(height: 5),
      ],
    );
  }

  return p.Column(children: salesData);
}

p.Widget generateSalesPaymentMode() {
  SalesController salesController = Get.find();
  return p.Expanded(
    child: p.Row(
      mainAxisSize: p.MainAxisSize.min,
      mainAxisAlignment: p.MainAxisAlignment.center,
      children: [
        p.Container(
          padding: const p.EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          decoration: p.BoxDecoration(
              color: PdfColor.fromHex('e8f5e9'),
              borderRadius: p.BorderRadius.circular(12)),
          child: p.Column(
            crossAxisAlignment: p.CrossAxisAlignment.start,
            children: [
              p.Text(
                'Payment mode',
                style: p.TextStyle(
                  fontWeight: p.FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              p.SizedBox(height: 10),
              p.RichText(
                text: p.TextSpan(
                  text: 'Cash: ',
                  style: p.TextStyle(
                    fontWeight: p.FontWeight.bold,
                    fontSize: 18,
                    color: PdfColor.fromHex('424242'),
                  ),
                  // style: DefaultTextStyle.of(context).style,
                  children: [
                    p.TextSpan(
                      text: getFormattedNumberWithComa(double.parse(salesController.cash)),
                      style: p.TextStyle(
                        // color: PdfColor.fromHex('424242'),
                        fontSize: 16,
                        fontWeight: p.FontWeight.normal,
                      ),
                    ),
                    // TextSpan(text: ' world!'),
                  ],
                ),
              ),
              p.SizedBox(height: 10),
              p.RichText(
                text: p.TextSpan(
                  text: 'Transfer: ',
                  style: p.TextStyle(
                    fontWeight: p.FontWeight.bold,
                    fontSize: 18,
                    color: PdfColor.fromHex('424242'),
                  ),
                  // style: DefaultTextStyle.of(context).style,
                  children: [
                    p.TextSpan(
                      text: getFormattedNumberWithComa(double.parse(salesController.transfer)),
                      style: p.TextStyle(
                        // color: PdfColor.fromHex('424242'),
                        fontSize: 16,
                        fontWeight: p.FontWeight.normal,
                      ),
                    ),
                    // TextSpan(text: ' world!'),
                  ],
                ),
              ),
              p.SizedBox(height: 10),
              p.RichText(
                text: p.TextSpan(
                  text: 'Credit: ',
                  style: p.TextStyle(
                    fontWeight: p.FontWeight.bold,
                    fontSize: 18,
                    color: PdfColor.fromHex('424242'),
                  ),
                  // style: DefaultTextStyle.of(context).style,
                  children: [
                    p.TextSpan(
                      text: getFormattedNumberWithComa(double.parse(salesController.credit)),
                      style: p.TextStyle(
                        // color: PdfColor.fromHex('424242'),
                        fontSize: 16,
                        fontWeight: p.FontWeight.normal,
                      ),
                    ),
                    // TextSpan(text: ' world!'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

p.Widget generatePriceSummary() {
  SalesController salesController = Get.find();
  return p.Expanded(
    child: p.Container(
      child: p.Column(
        children: [
          p.RichText(
            text: p.TextSpan(
              text: 'Subtotal: ',
              style: p.TextStyle(
                fontWeight: p.FontWeight.bold,
                fontSize: 18,
                color: PdfColor.fromHex('424242'),
              ),
              children: [
                p.TextSpan(
                  text: getFormattedNumberWithComa(double.parse(salesController.subtotal)),
                  style: const p.TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          p.SizedBox(height: 10),
          p.RichText(
            text: p.TextSpan(
              text: 'Discount: ',
              style: p.TextStyle(
                fontWeight: p.FontWeight.bold,
                fontSize: 18,
                color: PdfColor.fromHex('ef5350'),
              ),
              children: [
                p.TextSpan(
                  text: getFormattedNumberWithComa(double.parse(salesController.discount)),
                  style: const p.TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          p.SizedBox(height: 10),
          p.RichText(
            text: p.TextSpan(
              text: 'Total: ',
              style: p.TextStyle(
                fontWeight: p.FontWeight.bold,
                fontSize: 18,
                color: PdfColor.fromHex('424242'),
              ),
              children: [
                p.TextSpan(
                  text: getFormattedNumberWithComa(double.parse(salesController.total)),
                  style: const p.TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
