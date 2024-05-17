import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_file_dialog/flutter_file_dialog.dart';
import 'package:intl/intl.dart';
import 'package:pdf/pdf.dart';
import 'package:printing/printing.dart';
import 'package:pdf/widgets.dart' as p;

import 'package:my_inventory/core/functions/pdf/sales_pdf_functions.dart';
import 'package:my_inventory/add_sales/controller/add_sales_controller.dart';

class pdftest extends StatelessWidget {
  final Uint8List image;

  pdftest({super.key, required this.image});

  final AddSalesController salesController = AddSalesController.to;
  final DateTime now = DateTime.now();

  @override
  Widget build(BuildContext context) {
    final doc = p.Document();
    doc.addPage(p.MultiPage(
        margin: const p.EdgeInsets.symmetric(horizontal: 25, vertical: 30),
        pageFormat: PdfPageFormat.a4,
        build: (p.Context context) {
          return [
            p.Column(
              children: [
                p.Row(children: [
                  p.Image(p.MemoryImage(image),
                      fit: p.BoxFit.fitHeight, height: 70, width: 70),
                  p.SizedBox(width: 10),
                  p.Text(
                    'XYZ company',
                    style: p.TextStyle(
                      fontWeight: p.FontWeight.bold,
                      fontSize: 24,
                      // color: PdfColor.fromHex('424242'),
                    ),
                  )
                ]),
                p.Align(
                    child: p.RichText(
                      text: p.TextSpan(
                        text: 'Date: ',
                        style: p.TextStyle(
                          fontWeight: p.FontWeight.bold,
                          fontSize: 18,
                          color: PdfColor.fromHex('424242'),
                        ),
                        // style: DefaultTextStyle.of(context).style,
                        children: [
                          p.TextSpan(
                            text: DateFormat('MMM d, y')
                                .format(salesController.selectedSalesDate),
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
                    alignment: p.Alignment.centerRight),
                p.SizedBox(height: 10),
                p.Align(
                    child: p.RichText(
                      text: p.TextSpan(
                        text: 'Transaction type: ',
                        style: p.TextStyle(
                          fontWeight: p.FontWeight.bold,
                          fontSize: 18,
                          color: PdfColor.fromHex('424242'),
                        ),
                        // style: DefaultTextStyle.of(context).style,
                        children: [
                          p.TextSpan(
                            text: 'Sales',
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
                    alignment: p.Alignment.centerRight),
                p.SizedBox(height: 20),
                p.RichText(
                  text: p.TextSpan(
                    text: 'Customer name: ',
                    style: p.TextStyle(
                      fontWeight: p.FontWeight.bold,
                      fontSize: 18,
                      color: PdfColor.fromHex('424242'),
                    ),
                    // style: DefaultTextStyle.of(context).style,
                    children: [
                      p.TextSpan(
                        text: salesController.customerDatabaseModel?.name,
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
                p.SizedBox(height: 20),
                p.Text(
                  'Sales detail',
                  style: p.TextStyle(
                    fontSize: 18,
                    fontWeight: p.FontWeight.bold,
                  ),
                ),
                p.SizedBox(height: 10),
                p.Container(
                  color: const PdfColor(.91, .96, .91),
                  padding: const p.EdgeInsets.symmetric(vertical: 10),
                  child: p.Row(
                    children: [
                      p.Expanded(
                        // flex: ,
                        child: p.Text(
                          'No.',
                          textAlign: p.TextAlign.center,
                          style: p.TextStyle(
                            fontWeight: p.FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 4,
                        child: p.Text(
                          'Product name',
                          textAlign: p.TextAlign.center,
                          style: p.TextStyle(
                            fontWeight: p.FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          'Qty',
                          textAlign: p.TextAlign.center,
                          style: p.TextStyle(
                            fontWeight: p.FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          'Price',
                          textAlign: p.TextAlign.center,
                          style: p.TextStyle(
                            fontWeight: p.FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          'Total',
                          textAlign: p.TextAlign.center,
                          style: p.TextStyle(
                            fontWeight: p.FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                p.SizedBox(height: 10),
                generateSalesData(),
                p.SizedBox(height: 20),
                p.Row(
                  children: [
                    generateSalesPaymentMode(),
                    generatePriceSummary(),
                  ],
                )
              ],
            )
          ];
        }));
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('PDF Preview'),
      ),
      body: PdfPreview(
        scrollViewDecoration: const BoxDecoration(color: Colors.white),
        build: (context) => doc.save(),
        loadingWidget: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(),
            SizedBox(
              height: 20,
            ),
            Text('Generating pdf')
          ],
        ),
        pdfFileName:
            '${DateFormat('MMM d, y').format(salesController.selectedSalesDate)}_sales_${DateFormat('HmsS').format(now)}.pdf',
        canDebug: false,
        pdfPreviewPageDecoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: <BoxShadow>[
            BoxShadow(
              offset: Offset(0, .5),
              blurRadius: 1,
              color: Color(0xFF000000),
            ),
          ],
        ),
        canChangeOrientation: false,
        canChangePageFormat: false,
        actionBarTheme: PdfActionBarTheme(
            backgroundColor: Colors.white, iconColor: Colors.green.shade800),
        // onShared: (context) async {
        //   final directory = await getApplicationDocumentsDirectory();
        //   await Printing.sharePdf(
        //           bytes: await doc.save(), filename: 'myTest3.pdf')
        //       .then((value) {
        //     File('/data/data/com.inventory.my_inventory/cache/share/myTest3.pdf')
        //         .deleteSync();
        //   });
        // },
        allowSharing: false,
        actions: [
          IconButton(
              onPressed: () async {
                await Printing.sharePdf(
                    bytes: await doc.save(),
                    filename:
                        '${DateFormat('MMM d, y').format(salesController.selectedSalesDate)}_sales_${DateFormat('HmsS').format(now)}.pdf');
              },
              icon: const Icon(
                Icons.share,
              )),
          IconButton(
              onPressed: () async {
                final params = SaveFileDialogParams(
                    data: await doc.save(),
                    fileName:
                        '${DateFormat('MMM d, y').format(salesController.selectedSalesDate)}_sales_${DateFormat('HmsS').format(now)}.pdf');
                await FlutterFileDialog.saveFile(params: params).then((value) {
                  debugPrint('success');
                }).catchError((error) {});
              },
              icon: const Icon(
                Icons.download,
              ))
        ],
      ),
    );
  }
}
