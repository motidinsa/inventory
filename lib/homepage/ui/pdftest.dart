import 'dart:io';
import 'dart:math';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_file_dialog/flutter_file_dialog.dart';
import 'package:flutter_to_pdf/export_delegate.dart';
import 'package:flutter_to_pdf/export_frame.dart';
import 'package:folder_file_saver/folder_file_saver.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:printing/printing.dart';
import 'package:pdf/widgets.dart' as p;

import '../../core/ui/product/product_table_titles.dart';

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
        margin: p.EdgeInsets.symmetric(horizontal: 25, vertical: 30),
        pageFormat: PdfPageFormat.a4,
        build: (p.Context context) {
          return [
            p.Column(
              children: [
                p.Row(children: [
                  p.Image(p.MemoryImage(this.image),
                      fit: p.BoxFit.fitHeight, height: 50, width: 50),
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
                  color: PdfColor(.91, .96, .91),
                  padding: p.EdgeInsets.symmetric(vertical: 10),
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
                  padding: p.EdgeInsets.symmetric(vertical: 10),
                  child: p.Row(
                    children: [
                      p.Expanded(
                        // flex: ,
                        child: p.Text(
                          '1',
                          textAlign: p.TextAlign.center,
                          style: p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 4,
                        child: p.Text(
                          'delo motor oil 2x ntrhiu ggiitu',
                          textAlign: p.TextAlign.center,
                          style: p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '30',
                          textAlign: p.TextAlign.center,
                          style: p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '3,453',
                          textAlign: p.TextAlign.center,
                          style: p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '12,477',
                          textAlign: p.TextAlign.center,
                          style: p.TextStyle(
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
                  padding: p.EdgeInsets.symmetric(vertical: 10),
                  child: p.Row(
                    children: [
                      p.Expanded(
                        // flex: ,
                        child: p.Text(
                          '1',
                          textAlign: p.TextAlign.center,
                          style: p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 4,
                        child: p.Text(
                          'delo motor oil 2x',
                          textAlign: p.TextAlign.center,
                          style: p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '30',
                          textAlign: p.TextAlign.center,
                          style: p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '3,453',
                          textAlign: p.TextAlign.center,
                          style: p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '12,477',
                          textAlign: p.TextAlign.center,
                          style: p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                p.Container(
                  padding: p.EdgeInsets.symmetric(vertical: 10),
                  child: p.Row(
                    children: [
                      p.Expanded(
                        // flex: ,
                        child: p.Text(
                          '1',
                          textAlign: p.TextAlign.center,
                          style: p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 4,
                        child: p.Text(
                          'delo motor oil 2x',
                          textAlign: p.TextAlign.center,
                          style: p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '30',
                          textAlign: p.TextAlign.center,
                          style: p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '3,453',
                          textAlign: p.TextAlign.center,
                          style: p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '12,477',
                          textAlign: p.TextAlign.center,
                          style: p.TextStyle(
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
                  padding: p.EdgeInsets.symmetric(vertical: 10),
                  child: p.Row(
                    children: [
                      p.Expanded(
                        // flex: ,
                        child: p.Text(
                          '1',
                          textAlign: p.TextAlign.center,
                          style: p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 4,
                        child: p.Text(
                          'delo motor oil 2x',
                          textAlign: p.TextAlign.center,
                          style: p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '30',
                          textAlign: p.TextAlign.center,
                          style: p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '3,453',
                          textAlign: p.TextAlign.center,
                          style: p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '12,477',
                          textAlign: p.TextAlign.center,
                          style: p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                p.Container(
                  padding: p.EdgeInsets.symmetric(vertical: 10),
                  child: p.Row(
                    children: [
                      p.Expanded(
                        // flex: ,
                        child: p.Text(
                          '1',
                          textAlign: p.TextAlign.center,
                          style: p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 4,
                        child: p.Text(
                          'delo motor oil 2x',
                          textAlign: p.TextAlign.center,
                          style: p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '30',
                          textAlign: p.TextAlign.center,
                          style: p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '3,453',
                          textAlign: p.TextAlign.center,
                          style: p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '12,477',
                          textAlign: p.TextAlign.center,
                          style: p.TextStyle(
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
                  padding: p.EdgeInsets.symmetric(vertical: 10),
                  child: p.Row(
                    children: [
                      p.Expanded(
                        // flex: ,
                        child: p.Text(
                          '1',
                          textAlign: p.TextAlign.center,
                          style: p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 4,
                        child: p.Text(
                          'delo motor oil 2x',
                          textAlign: p.TextAlign.center,
                          style: p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '30',
                          textAlign: p.TextAlign.center,
                          style: p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '3,453',
                          textAlign: p.TextAlign.center,
                          style: p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '12,477',
                          textAlign: p.TextAlign.center,
                          style: p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                p.Container(
                  padding: p.EdgeInsets.symmetric(vertical: 10),
                  child: p.Row(
                    children: [
                      p.Expanded(
                        // flex: ,
                        child: p.Text(
                          '1',
                          textAlign: p.TextAlign.center,
                          style: p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 4,
                        child: p.Text(
                          'delo motor oil 2x',
                          textAlign: p.TextAlign.center,
                          style: p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '30',
                          textAlign: p.TextAlign.center,
                          style: p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '3,453',
                          textAlign: p.TextAlign.center,
                          style: p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '12,477',
                          textAlign: p.TextAlign.center,
                          style: p.TextStyle(
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
                  padding: p.EdgeInsets.symmetric(vertical: 10),
                  child: p.Row(
                    children: [
                      p.Expanded(
                        // flex: ,
                        child: p.Text(
                          '1',
                          textAlign: p.TextAlign.center,
                          style: p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 4,
                        child: p.Text(
                          'delo motor oil 2x',
                          textAlign: p.TextAlign.center,
                          style: p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '30',
                          textAlign: p.TextAlign.center,
                          style: p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '3,453',
                          textAlign: p.TextAlign.center,
                          style: p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '12,477',
                          textAlign: p.TextAlign.center,
                          style: p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                p.Container(
                  padding: p.EdgeInsets.symmetric(vertical: 10),
                  child: p.Row(
                    children: [
                      p.Expanded(
                        // flex: ,
                        child: p.Text(
                          '1',
                          textAlign: p.TextAlign.center,
                          style: p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 4,
                        child: p.Text(
                          'delo motor oil 2x',
                          textAlign: p.TextAlign.center,
                          style: p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '30',
                          textAlign: p.TextAlign.center,
                          style: p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '3,453',
                          textAlign: p.TextAlign.center,
                          style: p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '12,477',
                          textAlign: p.TextAlign.center,
                          style: p.TextStyle(
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
                  padding: p.EdgeInsets.symmetric(vertical: 10),
                  child: p.Row(
                    children: [
                      p.Expanded(
                        // flex: ,
                        child: p.Text(
                          '1',
                          textAlign: p.TextAlign.center,
                          style: p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 4,
                        child: p.Text(
                          'delo motor oil 2x',
                          textAlign: p.TextAlign.center,
                          style: p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '30',
                          textAlign: p.TextAlign.center,
                          style: p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '3,453',
                          textAlign: p.TextAlign.center,
                          style: p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '12,477',
                          textAlign: p.TextAlign.center,
                          style: p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                p.Container(
                  padding: p.EdgeInsets.symmetric(vertical: 10),
                  child: p.Row(
                    children: [
                      p.Expanded(
                        // flex: ,
                        child: p.Text(
                          '1',
                          textAlign: p.TextAlign.center,
                          style: p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 4,
                        child: p.Text(
                          'delo motor oil 2x',
                          textAlign: p.TextAlign.center,
                          style: p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '30',
                          textAlign: p.TextAlign.center,
                          style: p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '3,453',
                          textAlign: p.TextAlign.center,
                          style: p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '12,477',
                          textAlign: p.TextAlign.center,
                          style: p.TextStyle(
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
                  padding: p.EdgeInsets.symmetric(vertical: 10),
                  child: p.Row(
                    children: [
                      p.Expanded(
                        // flex: ,
                        child: p.Text(
                          '1',
                          textAlign: p.TextAlign.center,
                          style: p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 4,
                        child: p.Text(
                          'delo motor oil 2x',
                          textAlign: p.TextAlign.center,
                          style: p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '30',
                          textAlign: p.TextAlign.center,
                          style: p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '3,453',
                          textAlign: p.TextAlign.center,
                          style: p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '12,477',
                          textAlign: p.TextAlign.center,
                          style: p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                p.Container(
                  padding: p.EdgeInsets.symmetric(vertical: 10),
                  child: p.Row(
                    children: [
                      p.Expanded(
                        // flex: ,
                        child: p.Text(
                          '1',
                          textAlign: p.TextAlign.center,
                          style: p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 4,
                        child: p.Text(
                          'delo motor oil 2x',
                          textAlign: p.TextAlign.center,
                          style: p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '30',
                          textAlign: p.TextAlign.center,
                          style: p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '3,453',
                          textAlign: p.TextAlign.center,
                          style: p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '12,477',
                          textAlign: p.TextAlign.center,
                          style: p.TextStyle(
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
                  padding: p.EdgeInsets.symmetric(vertical: 10),
                  child: p.Row(
                    children: [
                      p.Expanded(
                        // flex: ,
                        child: p.Text(
                          '1',
                          textAlign: p.TextAlign.center,
                          style: p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 4,
                        child: p.Text(
                          'delo motor oil 2x',
                          textAlign: p.TextAlign.center,
                          style: p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '30',
                          textAlign: p.TextAlign.center,
                          style: p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '3,453',
                          textAlign: p.TextAlign.center,
                          style: p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '12,477',
                          textAlign: p.TextAlign.center,
                          style: p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                p.Container(
                  padding: p.EdgeInsets.symmetric(vertical: 10),
                  child: p.Row(
                    children: [
                      p.Expanded(
                        // flex: ,
                        child: p.Text(
                          '1',
                          textAlign: p.TextAlign.center,
                          style: p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 4,
                        child: p.Text(
                          'delo motor oil 2x',
                          textAlign: p.TextAlign.center,
                          style: p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '30',
                          textAlign: p.TextAlign.center,
                          style: p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '3,453',
                          textAlign: p.TextAlign.center,
                          style: p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '12,477',
                          textAlign: p.TextAlign.center,
                          style: p.TextStyle(
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
                  padding: p.EdgeInsets.symmetric(vertical: 10),
                  child: p.Row(
                    children: [
                      p.Expanded(
                        // flex: ,
                        child: p.Text(
                          '1',
                          textAlign: p.TextAlign.center,
                          style: p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 4,
                        child: p.Text(
                          'delo motor oil 2x',
                          textAlign: p.TextAlign.center,
                          style: p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '30',
                          textAlign: p.TextAlign.center,
                          style: p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '3,453',
                          textAlign: p.TextAlign.center,
                          style: p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '12,477',
                          textAlign: p.TextAlign.center,
                          style: p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                p.Container(
                  padding: p.EdgeInsets.symmetric(vertical: 10),
                  child: p.Row(
                    children: [
                      p.Expanded(
                        // flex: ,
                        child: p.Text(
                          '1',
                          textAlign: p.TextAlign.center,
                          style: p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 4,
                        child: p.Text(
                          'delo motor oil 2x',
                          textAlign: p.TextAlign.center,
                          style: p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '30',
                          textAlign: p.TextAlign.center,
                          style: p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '3,453',
                          textAlign: p.TextAlign.center,
                          style: p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '12,477',
                          textAlign: p.TextAlign.center,
                          style: p.TextStyle(
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
                  padding: p.EdgeInsets.symmetric(vertical: 10),
                  child: p.Row(
                    children: [
                      p.Expanded(
                        // flex: ,
                        child: p.Text(
                          '1',
                          textAlign: p.TextAlign.center,
                          style: p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 4,
                        child: p.Text(
                          'delo motor oil 2x',
                          textAlign: p.TextAlign.center,
                          style: p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '30',
                          textAlign: p.TextAlign.center,
                          style: p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '3,453',
                          textAlign: p.TextAlign.center,
                          style: p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '12,477',
                          textAlign: p.TextAlign.center,
                          style: p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                p.Container(
                  padding: p.EdgeInsets.symmetric(vertical: 10),
                  child: p.Row(
                    children: [
                      p.Expanded(
                        // flex: ,
                        child: p.Text(
                          '1',
                          textAlign: p.TextAlign.center,
                          style: p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 4,
                        child: p.Text(
                          'delo motor oil 2x',
                          textAlign: p.TextAlign.center,
                          style: p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '30',
                          textAlign: p.TextAlign.center,
                          style: p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '3,453',
                          textAlign: p.TextAlign.center,
                          style: p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '12,477',
                          textAlign: p.TextAlign.center,
                          style: p.TextStyle(
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
                  padding: p.EdgeInsets.symmetric(vertical: 10),
                  child: p.Row(
                    children: [
                      p.Expanded(
                        // flex: ,
                        child: p.Text(
                          '1',
                          textAlign: p.TextAlign.center,
                          style: p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 4,
                        child: p.Text(
                          'delo motor oil 2x',
                          textAlign: p.TextAlign.center,
                          style: p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '30',
                          textAlign: p.TextAlign.center,
                          style: p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '3,453',
                          textAlign: p.TextAlign.center,
                          style: p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '12,477',
                          textAlign: p.TextAlign.center,
                          style: p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                p.Container(
                  padding: p.EdgeInsets.symmetric(vertical: 10),
                  child: p.Row(
                    children: [
                      p.Expanded(
                        // flex: ,
                        child: p.Text(
                          '1',
                          textAlign: p.TextAlign.center,
                          style: p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 4,
                        child: p.Text(
                          'delo motor oil 2x',
                          textAlign: p.TextAlign.center,
                          style: p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '30',
                          textAlign: p.TextAlign.center,
                          style: p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '3,453',
                          textAlign: p.TextAlign.center,
                          style: p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '12,477',
                          textAlign: p.TextAlign.center,
                          style: p.TextStyle(
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
                  padding: p.EdgeInsets.symmetric(vertical: 10),
                  child: p.Row(
                    children: [
                      p.Expanded(
                        // flex: ,
                        child: p.Text(
                          '1',
                          textAlign: p.TextAlign.center,
                          style: p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 4,
                        child: p.Text(
                          'delo motor oil 2x',
                          textAlign: p.TextAlign.center,
                          style: p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '30',
                          textAlign: p.TextAlign.center,
                          style: p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '3,453',
                          textAlign: p.TextAlign.center,
                          style: p.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      p.Expanded(
                        flex: 2,
                        child: p.Text(
                          '12,477',
                          textAlign: p.TextAlign.center,
                          style: p.TextStyle(
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
                      child: p.Container(
                        padding: p.EdgeInsets.symmetric(vertical: 10),
                        decoration: p.BoxDecoration(
                            color: PdfColor.fromHex('e8f5e9'),
                            borderRadius: p.BorderRadius.circular(12)),
                        child: p.Column(
                          children: [
                            p.Text(
                              'Payment mode',
                              style: p.TextStyle(
                                fontWeight: p.FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            p.SizedBox(height: 10),
                            p.Text('Cash: '),
                            p.SizedBox(height: 10),
                            p.Text('Transfer: '),
                            p.SizedBox(height: 10),
                            p.Text('Credit: '),
                          ],
                        ),
                      ),
                    ),
                    // p.
                    p.Expanded(
                      child: p.Container(
                        // decoration: p.BoxDecoration(
                        //     color: PdfColor.fromHex('c8e6c9'),
                        //     borderRadius: p.BorderRadius.circular(12)),
                        child: p.Column(
                          children: [
                            p.Text(
                              'Subtotal',
                              style: p.TextStyle(
                                fontWeight: p.FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            p.SizedBox(height: 10),
                            p.Text('Discount: '),
                            p.SizedBox(height: 10),
                            p.Text('Total: '),
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
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await exportDelegate.exportToPdfDocument('test').then((value) async {
            final params = SaveFileDialogParams(
                data: await value.save(), fileName: 'kkk.pdf');
            await FlutterFileDialog.saveFile(params: params).then((value) {
              debugPrint('success');
            }).catchError((error) {});
          });
        },
        child: Text('aa'),
      ),
      appBar: AppBar(
        title: Text('PDF Preview'),
      ),
      body: PdfPreview(
        scrollViewDecoration: BoxDecoration(color: Colors.white),
        build: (context) => doc.save(),
        pdfFileName: 'mytest',
        canDebug: false,
        pdfPreviewPageDecoration: BoxDecoration(
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
              icon: Icon(
                Icons.share,
              )),
          IconButton(
              onPressed: () async {
                final params = SaveFileDialogParams(
                    data: await doc.save(), fileName: 'kkk.pdf');
                await FlutterFileDialog.saveFile(params: params).then((value) {
                  debugPrint('success');
                }).catchError((error) {});

                // await FolderFileSaver.saveFileIntoCustomDir(
                //   // filePath:  '${doc.}/default.isar',
                //   dirNamed: '/',
                // );
              },
              icon: Icon(
                Icons.download,
              ))
        ],
      ),
    );
  }
}
