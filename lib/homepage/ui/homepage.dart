import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_to_pdf/export_delegate.dart';
import 'package:folder_file_saver/folder_file_saver.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/constants/widget_constants.dart';
import 'package:my_inventory/homepage/ui/item_type.dart';
import 'package:my_inventory/homepage/ui/pdftest.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:permission_handler/permission_handler.dart';
import 'package:printing/printing.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButton: ,
      floatingActionButton: FloatingActionButton(
          onPressed: () async {
            // final ExportDelegate exportDelegate = ExportDelegate();
            // ExportFrame(
            //   frameId: 'someFrameId',
            //   child: SomeWidget(), // the widget you want to export
            // )
            final ByteData bytes = await rootBundle.load('assets/images/company-logo.png');
            final Uint8List byteList = bytes.buffer.asUint8List();
            // Get.to(Scaffold(body: Image(image:MemoryImage(byteList),
            //     fit: BoxFit.fitHeight, height: 100, width: 100, ),));
            Get.to(pdftest(image: byteList,));
            // await Printing.layoutPdf(
            //     onLayout: (PdfPageFormat format) async => doc.save());
            // final file = File('example.pdf');
            // await file.writeAsBytes(await doc.save());

            // await FileSaver.instance.saveFile( name: 'test.isar',filePath: '/data/data/com.inventory.my_inventory/app_flutter/default.isar',);
            // final directory = await getApplicationDocumentsDirectory();
            // final dir = directory.parent.path;
            // String pdfDirectory = '$dir/app_flutter';
            // final myDir = Directory(pdfDirectory);
            // await FolderFileSaver.saveFileIntoCustomDir(
            //   filePath:  '${directory.path}/default.isar',
            //   dirNamed: '/',
            // );

            // var status = await Permission.videos.status;
            //
            // await Permission.photos.request();
            // print(status.name);
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
            // String pdfDirectory = '$dir/app_flutter';
            // final myDir = Directory(pdfDirectory);
            //  await FolderFileSaver.saveFileIntoCustomDir(
            //     filePath:  '${directory.path}/backup.isar',
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
            // var status = await Permission.storage.status;
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

            // await FileSaver.instance.saveFile( name: 'test',filePath: '/data/data/com.inventory.my_inventory/app_flutter/default.isar',);
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
