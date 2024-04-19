import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:printing/printing.dart';
import 'package:pdf/widgets.dart' as pw;

class pdftest extends StatelessWidget {
  const pdftest({super.key});

  @override
  Widget build(BuildContext context) {
    final doc = pw.Document(); // import 'package:pdf/widgets.dart' as pw
    doc.addPage(
      pw.Page(
        pageFormat: PdfPageFormat.a4,
        build: (pw.Context context) {
          return pw.Padding(
            // recreate the entire UI
            padding: const pw.EdgeInsets.all(18.00),
            child: pw.Column(
              children: [
                // pw.Align(
                //   alignment: pw.Alignment.topCenter,
                //   child: pw.Image(image, width: 100, height: 100), // our school logo for the official PDF
                // ),
                pw.Text(
                  ' & Co. Secondary School',
                  style: const pw.TextStyle(fontSize: 17.00),
                ),
                pw.SizedBox(height: 10.00),
                pw.Align(
                  alignment: pw.Alignment.topLeft,
                  child: pw.Row(
                    mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                    children: [
                      pw.Text(
                        'Name: {widget.studentName}',
                        style: const pw.TextStyle(fontSize: 15.00),
                      ),
                      pw.Text(
                        'Form 4 West',
                        style: const pw.TextStyle(fontSize: 15.00),
                      ),
                    ],
                  ),
                ),
                pw.Divider(),
                pw.SizedBox(height: 15.00),
                pw.Row(
                  mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                  children: [
                    pw.Column(
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      children: [
                        pw.Text(
                          'Subject',
                          style: const pw.TextStyle(fontSize: 15.00),
                        ),
                        pw.SizedBox(height: 5.00),
                        pw.Text(
                          'Maths',
                          style: const pw.TextStyle(fontSize: 15.00),
                        ),
                        pw.Text(
                          'English',
                          style: const pw.TextStyle(fontSize: 15.00),
                        ),
                        pw.Text(
                          'Kiswahili',
                          style: const pw.TextStyle(fontSize: 15.00),
                        ),
                        pw.Text(
                          'Physics',
                          style: const pw.TextStyle(fontSize: 15.00),
                        ),
                        pw.Text(
                          'Biology',
                          style: const pw.TextStyle(fontSize: 15.00),
                        ),
                        pw.Text(
                          'Chemistry',
                          style: const pw.TextStyle(fontSize: 15.00),
                        ),
                        pw.Text(
                          'Geography',
                          style: const pw.TextStyle(fontSize: 15.00),
                        ),
                        pw.Text(
                          'Spanish',
                          style: const pw.TextStyle(fontSize: 15.00),
                        ),
                      ],
                    ),
                    pw.Column(
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      children: [
                        pw.Text(
                          'Marks',
                          style: const pw.TextStyle(fontSize: 15.00),
                        ),
                        pw.SizedBox(height: 5.00),
                        pw.Text(
                          '[0].toString()',
                          style: const pw.TextStyle(fontSize: 15.00),
                        ),
                        pw.Text(
                          'English][0].toString()',
                          style: const pw.TextStyle(fontSize: 15.00),
                        ),
                        pw.Text(
                          'Kiswahili][0].toString()',
                          style: const pw.TextStyle(fontSize: 15.00),
                        ),
                        pw.Text(
                          'Physics][0].toString()',
                          style: const pw.TextStyle(fontSize: 15.00),
                        ),
                        pw.Text(
                          'Biology][0].toString()',
                          style: const pw.TextStyle(fontSize: 15.00),
                        ),
                        pw.Text(
                          'Chemistry][0].toString()',
                          style: const pw.TextStyle(fontSize: 15.00),
                        ),
                        pw.Text(
                          'Geography][0].toString()',
                          style: const pw.TextStyle(fontSize: 15.00),
                        ),
                        pw.Text(
                          'Spanish][0].toString()',
                          style: const pw.TextStyle(fontSize: 15.00),
                        ),
                      ],
                    ),
                    pw.Column(
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      children: [
                        pw.Text(
                          'Grade',
                          style: const pw.TextStyle(fontSize: 15.00),
                        ),
                        pw.SizedBox(height: 5.00),
                        pw.Text(
                          'Maths]',
                          style: const pw.TextStyle(fontSize: 15.00),
                        ),
                        pw.Text(
                          'English][1]',
                          style: const pw.TextStyle(fontSize: 15.00),
                        ),
                        pw.Text(
                          'Kiswahili][1]',
                          style: const pw.TextStyle(fontSize: 15.00),
                        ),
                        pw.Text(
                          'widget.studentResults[',
                          style: const pw.TextStyle(fontSize: 15.00),
                        ),
                        pw.Text(
                          'widget.st Biology',
                          style: const pw.TextStyle(fontSize: 15.00),
                        ),
                        pw.Text(
                          'Chemistry][1]',
                          style: const pw.TextStyle(fontSize: 15.00),
                        ),
                        pw.Text(
                          'Geography][1]',
                          style: const pw.TextStyle(fontSize: 15.00),
                        ),
                        pw.Text(
                          'Spanish][1]',
                          style: const pw.TextStyle(fontSize: 15.00),
                        ),
                      ],
                    ),
                  ],
                ),
                pw.SizedBox(height: 30.00),
                pw.Row(
                  mainAxisAlignment: pw.MainAxisAlignment.center,
                  children: [
                    pw.Text(
                      'Grand Total: 2000000',
                    ),
                    pw.SizedBox(width: 15),
                    pw.Text(
                      'Mean Grade: 400000}',
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('PDF Preview'),
      ),
      body: PdfPreview(
        scrollViewDecoration: BoxDecoration(color: Colors.white),
        build: (context) => doc.save(),
        pdfFileName: 'mytest',
        canDebug: false,
        pdfPreviewPageDecoration: BoxDecoration( color: Colors.white,
          boxShadow: <BoxShadow>[
            BoxShadow(
              offset: Offset(0, 2),
              blurRadius: 5,
              color: Color(0xFF000000),
            ),
          ],
        ),
        canChangeOrientation: false,
        canChangePageFormat: false,
        actionBarTheme: PdfActionBarTheme(
            backgroundColor: Colors.white, iconColor: Colors.green.shade800),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.download,
              ))
        ],
      ),
    );
  }
}
