import 'package:get/get.dart';
import 'package:my_inventory/sales/controller/sales_controller.dart';
import 'package:pdf/pdf.dart';

import '../../model/sales/sales_model.dart';
import 'package:pdf/widgets.dart' as p;

List<p.Widget> generateSalesData() {
  List<p.Widget> salesData = [];
  SalesController salesController = Get.find();
  for (int i = 0; i < salesController.salesModels.length; i++) {
    SalesModel salesModel = salesController.salesModels[i].value;
    salesData.add(
      p.Container(
        color: i.isOdd ? PdfColor.fromHex('eeeeee') : null,
        padding: p.EdgeInsets.symmetric(vertical: 10),
        child: p.Row(
          children: [
            p.Expanded(
              child: p.Text(
                '${i + 1}',
                textAlign: p.TextAlign.center,
                style: p.TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            p.Expanded(
              flex: 4,
              child: p.Text(
                salesModel.productName,
                textAlign: p.TextAlign.center,
                style: p.TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            p.Expanded(
              flex: 2,
              child: p.Text(
                salesModel.quantity,
                textAlign: p.TextAlign.center,
                style: p.TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            p.Expanded(
              flex: 2,
              child: p.Text(
                salesModel.price,
                textAlign: p.TextAlign.center,
                style: p.TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            p.Expanded(
              flex: 2,
              child: p.Text(
                salesModel.totalAmount.toString(),
                textAlign: p.TextAlign.center,
                style: p.TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  return salesData;
}

p.Widget generateSalesPaymentMode() {
  SalesController salesController = Get.find();
  return p.Expanded(
    child: p.Row(
      mainAxisSize: p.MainAxisSize.min,
      mainAxisAlignment: p.MainAxisAlignment.center,
      children: [
        p.Container(
          padding: p.EdgeInsets.symmetric(vertical: 15, horizontal: 20),
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
                      text: salesController.cash,
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
                      text: salesController.transfer,
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
                      text: salesController.credit,
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
                  text: salesController.subtotal.value,
                  style: p.TextStyle(
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
                  text: salesController.discount.value,
                  style: p.TextStyle(
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
                  text: salesController.total.value,
                  style: p.TextStyle(
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
