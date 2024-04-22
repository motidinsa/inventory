import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_file_dialog/flutter_file_dialog.dart';
import 'package:flutter_to_pdf/export_delegate.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:printing/printing.dart';
import 'package:pdf/widgets.dart' as p;


class pdftest extends StatelessWidget {
  final Uint8List image;

  const pdftest({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    final doc = p.Document();
    final ExportDelegate exportDelegate = ExportDelegate();
    // final ByteData bytes = await rootBundle.load('assets/phone.png');
    // final Uint8List byteList = bytes.buffer.asUint8List();
    // final image = p.MemoryImage(
    //   File('assets/images/company-logo.png').readAsBytesSync(),
    // );
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
                            text: '13/22/2222',
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
                        text: 'Mr. X',
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
                p.Container(
                  padding: const p.EdgeInsets.symmetric(vertical: 10),
                  child: p.Row(
                    children: [
                      p.Expanded(
                        // flex: ,
                        child: p.Text(
                          '1',
                          textAlign: p.TextAlign.center,
                          style: const p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 4,
                        child: p.Text(
                          'delo motor oil 2x ntrhiu ggiitu',
                          textAlign: p.TextAlign.center,
                          style: const p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '30',
                          textAlign: p.TextAlign.center,
                          style: const p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '3,453',
                          textAlign: p.TextAlign.center,
                          style: const p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '12,477',
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
                p.Container(
                  color: PdfColor.fromHex('eeeeee'),
                  padding: const p.EdgeInsets.symmetric(vertical: 10),
                  child: p.Row(
                    children: [
                      p.Expanded(
                        // flex: ,
                        child: p.Text(
                          '1',
                          textAlign: p.TextAlign.center,
                          style: const p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 4,
                        child: p.Text(
                          'delo motor oil 2x',
                          textAlign: p.TextAlign.center,
                          style: const p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '30',
                          textAlign: p.TextAlign.center,
                          style: const p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '3,453',
                          textAlign: p.TextAlign.center,
                          style: const p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '12,477',
                          textAlign: p.TextAlign.center,
                          style: const p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                p.Container(
                  padding: const p.EdgeInsets.symmetric(vertical: 10),
                  child: p.Row(
                    children: [
                      p.Expanded(
                        // flex: ,
                        child: p.Text(
                          '1',
                          textAlign: p.TextAlign.center,
                          style: const p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 4,
                        child: p.Text(
                          'delo motor oil 2x',
                          textAlign: p.TextAlign.center,
                          style: const p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '30',
                          textAlign: p.TextAlign.center,
                          style: const p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '3,453',
                          textAlign: p.TextAlign.center,
                          style: const p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '12,477',
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
                p.Container(
                  color: PdfColor.fromHex('eeeeee'),
                  padding: const p.EdgeInsets.symmetric(vertical: 10),
                  child: p.Row(
                    children: [
                      p.Expanded(
                        // flex: ,
                        child: p.Text(
                          '1',
                          textAlign: p.TextAlign.center,
                          style: const p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 4,
                        child: p.Text(
                          'delo motor oil 2x',
                          textAlign: p.TextAlign.center,
                          style: const p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '30',
                          textAlign: p.TextAlign.center,
                          style: const p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '3,453',
                          textAlign: p.TextAlign.center,
                          style: const p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '12,477',
                          textAlign: p.TextAlign.center,
                          style: const p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                p.Container(
                  padding: const p.EdgeInsets.symmetric(vertical: 10),
                  child: p.Row(
                    children: [
                      p.Expanded(
                        // flex: ,
                        child: p.Text(
                          '1',
                          textAlign: p.TextAlign.center,
                          style: const p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 4,
                        child: p.Text(
                          'delo motor oil 2x',
                          textAlign: p.TextAlign.center,
                          style: const p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '30',
                          textAlign: p.TextAlign.center,
                          style: const p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '3,453',
                          textAlign: p.TextAlign.center,
                          style: const p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '12,477',
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
                p.Container(
                  color: PdfColor.fromHex('eeeeee'),
                  padding: const p.EdgeInsets.symmetric(vertical: 10),
                  child: p.Row(
                    children: [
                      p.Expanded(
                        // flex: ,
                        child: p.Text(
                          '1',
                          textAlign: p.TextAlign.center,
                          style: const p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 4,
                        child: p.Text(
                          'delo motor oil 2x',
                          textAlign: p.TextAlign.center,
                          style: const p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '30',
                          textAlign: p.TextAlign.center,
                          style: const p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '3,453',
                          textAlign: p.TextAlign.center,
                          style: const p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '12,477',
                          textAlign: p.TextAlign.center,
                          style: const p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                p.Container(
                  padding: const p.EdgeInsets.symmetric(vertical: 10),
                  child: p.Row(
                    children: [
                      p.Expanded(
                        // flex: ,
                        child: p.Text(
                          '1',
                          textAlign: p.TextAlign.center,
                          style: const p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 4,
                        child: p.Text(
                          'delo motor oil 2x',
                          textAlign: p.TextAlign.center,
                          style: const p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '30',
                          textAlign: p.TextAlign.center,
                          style: const p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '3,453',
                          textAlign: p.TextAlign.center,
                          style: const p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '12,477',
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
                p.Container(
                  color: PdfColor.fromHex('eeeeee'),
                  padding: const p.EdgeInsets.symmetric(vertical: 10),
                  child: p.Row(
                    children: [
                      p.Expanded(
                        // flex: ,
                        child: p.Text(
                          '1',
                          textAlign: p.TextAlign.center,
                          style: const p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 4,
                        child: p.Text(
                          'delo motor oil 2x',
                          textAlign: p.TextAlign.center,
                          style: const p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '30',
                          textAlign: p.TextAlign.center,
                          style: const p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '3,453',
                          textAlign: p.TextAlign.center,
                          style: const p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '12,477',
                          textAlign: p.TextAlign.center,
                          style: const p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                p.Container(
                  padding: const p.EdgeInsets.symmetric(vertical: 10),
                  child: p.Row(
                    children: [
                      p.Expanded(
                        // flex: ,
                        child: p.Text(
                          '1',
                          textAlign: p.TextAlign.center,
                          style: const p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 4,
                        child: p.Text(
                          'delo motor oil 2x',
                          textAlign: p.TextAlign.center,
                          style: const p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '30',
                          textAlign: p.TextAlign.center,
                          style: const p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '3,453',
                          textAlign: p.TextAlign.center,
                          style: const p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '12,477',
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
                p.Container(
                  color: PdfColor.fromHex('eeeeee'),
                  padding: const p.EdgeInsets.symmetric(vertical: 10),
                  child: p.Row(
                    children: [
                      p.Expanded(
                        // flex: ,
                        child: p.Text(
                          '1',
                          textAlign: p.TextAlign.center,
                          style: const p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 4,
                        child: p.Text(
                          'delo motor oil 2x',
                          textAlign: p.TextAlign.center,
                          style: const p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '30',
                          textAlign: p.TextAlign.center,
                          style: const p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '3,453',
                          textAlign: p.TextAlign.center,
                          style: const p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '12,477',
                          textAlign: p.TextAlign.center,
                          style: const p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                p.Container(
                  padding: const p.EdgeInsets.symmetric(vertical: 10),
                  child: p.Row(
                    children: [
                      p.Expanded(
                        // flex: ,
                        child: p.Text(
                          '1',
                          textAlign: p.TextAlign.center,
                          style: const p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 4,
                        child: p.Text(
                          'delo motor oil 2x',
                          textAlign: p.TextAlign.center,
                          style: const p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '30',
                          textAlign: p.TextAlign.center,
                          style: const p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '3,453',
                          textAlign: p.TextAlign.center,
                          style: const p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '12,477',
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
                p.Container(
                  color: PdfColor.fromHex('eeeeee'),
                  padding: const p.EdgeInsets.symmetric(vertical: 10),
                  child: p.Row(
                    children: [
                      p.Expanded(
                        // flex: ,
                        child: p.Text(
                          '1',
                          textAlign: p.TextAlign.center,
                          style: const p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 4,
                        child: p.Text(
                          'delo motor oil 2x',
                          textAlign: p.TextAlign.center,
                          style: const p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '30',
                          textAlign: p.TextAlign.center,
                          style: const p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '3,453',
                          textAlign: p.TextAlign.center,
                          style: const p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '12,477',
                          textAlign: p.TextAlign.center,
                          style: const p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                p.Container(
                  padding: const p.EdgeInsets.symmetric(vertical: 10),
                  child: p.Row(
                    children: [
                      p.Expanded(
                        // flex: ,
                        child: p.Text(
                          '1',
                          textAlign: p.TextAlign.center,
                          style: const p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 4,
                        child: p.Text(
                          'delo motor oil 2x',
                          textAlign: p.TextAlign.center,
                          style: const p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '30',
                          textAlign: p.TextAlign.center,
                          style: const p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '3,453',
                          textAlign: p.TextAlign.center,
                          style: const p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '12,477',
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
                p.Container(
                  color: PdfColor.fromHex('eeeeee'),
                  padding: const p.EdgeInsets.symmetric(vertical: 10),
                  child: p.Row(
                    children: [
                      p.Expanded(
                        // flex: ,
                        child: p.Text(
                          '1',
                          textAlign: p.TextAlign.center,
                          style: const p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 4,
                        child: p.Text(
                          'delo motor oil 2x',
                          textAlign: p.TextAlign.center,
                          style: const p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '30',
                          textAlign: p.TextAlign.center,
                          style: const p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '3,453',
                          textAlign: p.TextAlign.center,
                          style: const p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '12,477',
                          textAlign: p.TextAlign.center,
                          style: const p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                p.Container(
                  padding: const p.EdgeInsets.symmetric(vertical: 10),
                  child: p.Row(
                    children: [
                      p.Expanded(
                        // flex: ,
                        child: p.Text(
                          '1',
                          textAlign: p.TextAlign.center,
                          style: const p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 4,
                        child: p.Text(
                          'delo motor oil 2x',
                          textAlign: p.TextAlign.center,
                          style: const p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '30',
                          textAlign: p.TextAlign.center,
                          style: const p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '3,453',
                          textAlign: p.TextAlign.center,
                          style: const p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '12,477',
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
                p.Container(
                  color: PdfColor.fromHex('eeeeee'),
                  padding: const p.EdgeInsets.symmetric(vertical: 10),
                  child: p.Row(
                    children: [
                      p.Expanded(
                        // flex: ,
                        child: p.Text(
                          '1',
                          textAlign: p.TextAlign.center,
                          style: const p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 4,
                        child: p.Text(
                          'delo motor oil 2x',
                          textAlign: p.TextAlign.center,
                          style: const p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '30',
                          textAlign: p.TextAlign.center,
                          style: const p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '3,453',
                          textAlign: p.TextAlign.center,
                          style: const p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '12,477',
                          textAlign: p.TextAlign.center,
                          style: const p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                p.Container(
                  padding: const p.EdgeInsets.symmetric(vertical: 10),
                  child: p.Row(
                    children: [
                      p.Expanded(
                        // flex: ,
                        child: p.Text(
                          '1',
                          textAlign: p.TextAlign.center,
                          style: const p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 4,
                        child: p.Text(
                          'delo motor oil 2x',
                          textAlign: p.TextAlign.center,
                          style: const p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '30',
                          textAlign: p.TextAlign.center,
                          style: const p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '3,453',
                          textAlign: p.TextAlign.center,
                          style: const p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '12,477',
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
                p.Container(
                  color: PdfColor.fromHex('eeeeee'),
                  padding: const p.EdgeInsets.symmetric(vertical: 10),
                  child: p.Row(
                    children: [
                      p.Expanded(
                        // flex: ,
                        child: p.Text(
                          '1',
                          textAlign: p.TextAlign.center,
                          style: const p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 4,
                        child: p.Text(
                          'delo motor oil 2x',
                          textAlign: p.TextAlign.center,
                          style: const p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '30',
                          textAlign: p.TextAlign.center,
                          style: const p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '3,453',
                          textAlign: p.TextAlign.center,
                          style: const p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '12,477',
                          textAlign: p.TextAlign.center,
                          style: const p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                p.Container(
                  padding: const p.EdgeInsets.symmetric(vertical: 10),
                  child: p.Row(
                    children: [
                      p.Expanded(
                        // flex: ,
                        child: p.Text(
                          '1',
                          textAlign: p.TextAlign.center,
                          style: const p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 4,
                        child: p.Text(
                          'delo motor oil 2x',
                          textAlign: p.TextAlign.center,
                          style: const p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '30',
                          textAlign: p.TextAlign.center,
                          style: const p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '3,453',
                          textAlign: p.TextAlign.center,
                          style: const p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '12,477',
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
                p.Container(
                  color: PdfColor.fromHex('eeeeee'),
                  padding: const p.EdgeInsets.symmetric(vertical: 10),
                  child: p.Row(
                    children: [
                      p.Expanded(
                        // flex: ,
                        child: p.Text(
                          '1',
                          textAlign: p.TextAlign.center,
                          style: const p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 4,
                        child: p.Text(
                          'delo motor oil 2x',
                          textAlign: p.TextAlign.center,
                          style: const p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '30',
                          textAlign: p.TextAlign.center,
                          style: const p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '3,453',
                          textAlign: p.TextAlign.center,
                          style: const p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '12,477',
                          textAlign: p.TextAlign.center,
                          style: const p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                p.Container(
                  padding: const p.EdgeInsets.symmetric(vertical: 10),
                  child: p.Row(
                    children: [
                      p.Expanded(
                        // flex: ,
                        child: p.Text(
                          '1',
                          textAlign: p.TextAlign.center,
                          style: const p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 4,
                        child: p.Text(
                          'delo motor oil 2x',
                          textAlign: p.TextAlign.center,
                          style: const p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '30',
                          textAlign: p.TextAlign.center,
                          style: const p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '3,453',
                          textAlign: p.TextAlign.center,
                          style: const p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '12,477',
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
                p.Container(
                  color: PdfColor.fromHex('eeeeee'),
                  padding: const p.EdgeInsets.symmetric(vertical: 10),
                  child: p.Row(
                    children: [
                      p.Expanded(
                        // flex: ,
                        child: p.Text(
                          '1',
                          textAlign: p.TextAlign.center,
                          style: const p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 4,
                        child: p.Text(
                          'delo motor oil 2x',
                          textAlign: p.TextAlign.center,
                          style: const p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '30',
                          textAlign: p.TextAlign.center,
                          style: const p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '3,453',
                          textAlign: p.TextAlign.center,
                          style: const p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '12,477',
                          textAlign: p.TextAlign.center,
                          style: const p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                p.SizedBox(height: 20),
                p.Row(
                  children: [
                    p.Expanded(
                        child: p.Row(
                            mainAxisSize: p.MainAxisSize.min,
                            mainAxisAlignment: p.MainAxisAlignment.center,
                            children: [
                          p.Container(
                            padding: const p.EdgeInsets.symmetric(
                                vertical: 15, horizontal: 20),
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
                                        text: '2,000',
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
                                        text: '3,000',
                                        style: p.TextStyle(
                                          // color: PdfColor.fromHex('424242'),
                                          fontSize: 16,
                                          fontWeight: p.FontWeight.normal,
                                        ),
                                      ),
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
                                        text: '3,500',
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
                        ])),
                    // p.
                    p.Expanded(
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
                                children: const [
                                  p.TextSpan(
                                    text: '10,000',
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
                                children: const [
                                  p.TextSpan(
                                    text: '300',
                                    style: p.TextStyle(
                                      // color: PdfColor.fromHex('424242'),
                                      fontSize: 16,
                                      // fontWeight: p.FontWeight.normal,
                                    ),
                                  ),
                                  // TextSpan(text: ' world!'),
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
                                // style: DefaultTextStyle.of(context).style,
                                children: const [
                                  p.TextSpan(
                                    text: '9,700',
                                    style: p.TextStyle(
                                      // color: PdfColor.fromHex('424242'),
                                      fontSize: 16,
                                      // fontWeight: p.FontWeight.normal,
                                    ),
                                  ),
                                  // TextSpan(text: ' world!'),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
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
        pdfFileName: 'mytest',
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
        onShared: (context) async {
          final directory = await getApplicationDocumentsDirectory();
          await Printing.sharePdf(
                  bytes: await doc.save(), filename: 'myTest3.pdf')
              .then((value) {
            File('/data/data/com.inventory.my_inventory/cache/share/myTest3.pdf')
                .deleteSync();
          });
        },
        allowSharing: false,
        actions: [
          IconButton(
              onPressed: () async {
                await Printing.sharePdf(
                    bytes: await doc.save(), filename: 'myTest3.pdf');
              },
              icon: const Icon(
                Icons.share,
              )),
          IconButton(
              onPressed: () async {
                final params = SaveFileDialogParams(
                    data: await doc.save(), fileName: 'kkk.pdf');
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
