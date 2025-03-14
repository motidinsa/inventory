import 'package:get/get.dart';
import 'package:inventory/add_sales/controller/add_sales_controller.dart';
import 'package:pdf/pdf.dart';

import 'package:inventory/core/model/sales/sales_model.dart';
import 'package:pdf/widgets.dart' as p;

import 'package:inventory/core/functions/helper_functions.dart';

p.Widget generateSalesData() {
  List<p.Widget> salesData = [];
  AddSalesController salesController = Get.find();
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
  AddSalesController salesController = Get.find();
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
                      text: getFormattedNumberWithComa(
                          salesController.cash.isNotEmpty
                              ? double.parse(salesController.cash)
                              : 0),
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
                      text: getFormattedNumberWithComa(
                          salesController.transfer.isNotEmpty
                              ? double.parse(salesController.transfer)
                              : 0),
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
                      text: getFormattedNumberWithComa(
                          salesController.credit.isNotEmpty
                              ? double.parse(salesController.credit)
                              : 0),
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
  AddSalesController salesController = Get.find();
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
                  text: getFormattedNumberWithComa(
                      salesController.subtotal.isNotEmpty
                          ? double.parse(salesController.subtotal)
                          : 0),
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
                  text: getFormattedNumberWithComa(
                      salesController.discount.isNotEmpty
                          ? double.parse(salesController.discount)
                          : 0),
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
                  text: getFormattedNumberWithComa(
                      salesController.total.isNotEmpty
                          ? double.parse(salesController.total)
                          : 0),
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
