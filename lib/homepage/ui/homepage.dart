import 'dart:io';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/constants/widget_constants.dart';
import 'package:my_inventory/homepage/ui/item_type.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButton: ,
      floatingActionButton: FloatingActionButton(
          onPressed: () async {
            // final image = await imageFromAssetBundle('assets/logos/school-logo.png'); // import 'package:printing/printing.dart'
            final doc =
                pw.Document(); // import 'package:pdf/widgets.dart' as pw
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
                          'Jackie & Co. Secondary School',
                          style: const pw.TextStyle(fontSize: 17.00),
                        ),
                        pw.SizedBox(height: 10.00),
                        pw.Align(
                          alignment: pw.Alignment.topLeft,
                          child: pw.Row(
                            mainAxisAlignment:
                                pw.MainAxisAlignment.spaceBetween,
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
            //   // final data = useData ? await _currentFile!.readAsBytes() : null;
            //   final params = SaveFileDialogParams(
            //     sourceFilePath:
            //         '/data/data/com.inventory.my_inventory/cache/scaled_bf97b623-512a-4578-93f1-5db5369d8d8e3013635557314530898.jpg',
            //     // data: data,
            //     // localOnly: true,
            //     // fileName: useData ? "untitled" : null
            //   );
            //   result = await FlutterFileDialog.saveFile(params: params);
            //   print(result);
            // } on PlatformException catch (e) {
            //   print(e);
            // } finally {
            //   // setState(() {
            //   //   _savedFilePath = result ?? _savedFilePath;
            //   //   _isBusy = false;
            //   // });
            // }
            Get.to(Scaffold(
              appBar: AppBar(
                title: Text('PDF Preview'),
              ),
              body: PdfPreview(
                build: (context) => doc.save(),
                canDebug: false,
              ),
            ));
            // await Printing.layoutPdf(
            //     onLayout: (PdfPageFormat format) async => doc.save());
            // final file = File('example.pdf');
            // await file.writeAsBytes(await doc.save());
          },
          child: Icon(Icons.ac_unit_rounded)),
      appBar: AppBar(
        title: const Text(
          'XYZ Company',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          icon: const FaIcon(
            FontAwesomeIcons.bars,
            size: 20,
            // color: primaryColor(),
          ),
          onPressed: () async {
            // final directory = await getApplicationDocumentsDirectory();
            // final dir = directory.parent.path;
            // String pdfDirectory = '$dir/cache';
            // final myDir = Directory(pdfDirectory);
            //  await FolderFileSaver.saveFileIntoCustomDir(
            //     filePath:  '${directory.path}/default.isar',
            // dirNamed: '/',
            // );
            //
            // print(myDir.listSync(recursive: true, followLinks: false));
            // try {
            //   await Gal.putImage(
            //       '/data/user/0/com.inventory.my_inventory/app_flutter/default.isar',
            //       album: appNameN);
            // } on GalException catch (e) {
            //   log(e.type.message);
            // }
            // static Future<String> getExternalDocumentPath() async {
            // To check whether permission is given for this app or not.
            // await Permission.location.request();
            // final result = GallerySaver.saveImage(
            //         '/data/data/com.inventory.my_inventory/cache/scaled_bf97b623-512a-4578-93f1-5db5369d8d8e3013635557314530898.jpg',
            //         albumName: 'aaa')
            //     .then((bool? sa) {
            //   print(sa);
            // setState(() {
            //   firstButtonText = 'image saved!';
            // });
            // });
            // var status = await Permission.photos.status;
            // if (!status.isGranted) {
            //   // If not we will ask for permission first
            //   await Permission.photos.request();
            // }
            // Directory _directory = Directory("");
            // if (Platform.isAndroid) {
            //   // Redirects it to download folder in android
            //   _directory = Directory("/storage/emulated/0/Mine");
            // } else {
            //   _directory = await getApplicationDocumentsDirectory();
            // }
            //
            // final exPath = _directory.path;
            // print("Saved Path: $exPath");
            // await Directory(exPath).create(recursive: true);
            // return exPath;

            Scaffold.of(context).openDrawer();
            // String? result;
            // try {
            //   // setState(() {
            //   //   _isBusy = true;
            //   // });
            //   // final data = useData ? await _currentFile!.readAsBytes() : null;
            //   final params = SaveFileDialogParams(
            //     sourceFilePath:
            //         '/data/data/com.inventory.my_inventory/cache/scaled_bf97b623-512a-4578-93f1-5db5369d8d8e3013635557314530898.jpg',
            //     // data: data,
            //     // localOnly: true,
            //     // fileName: useData ? "untitled" : null
            //   );
            //   result = await FlutterFileDialog.saveFile(params: params);
            //   print(result);
            // } on PlatformException catch (e) {
            //   print(e);
            // } finally {
            //   // setState(() {
            //   //   _savedFilePath = result ?? _savedFilePath;
            //   //   _isBusy = false;
            //   // });
            // }
          },
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: CircleAvatar(
              radius: 25,
              backgroundColor: Colors.white,
              backgroundImage: AssetImage(
                'assets/images/company-logo.png',
              ),
            ),
          ),
        ],
      ),
      // drawer: const Drawer(),
      body: ListView(
        children: [
          sizedBox(height: 10),
          ItemType(
            title: salesN,
            addItemName: customerN,
            detailPageName: salesN,
          ),
          sizedBox(height: 30),
          ItemType(
            title: purchasingN,
            addItemName: vendorN,
            detailPageName: purchaseN,
          ),
          sizedBox(height: 30),
          ItemType(
            title: inventoryN,
            addItemName: productN,
            detailPageName: reorderStockN,
          ),
          sizedBox(height: 20),
        ],
      ),
    );
  }
}
