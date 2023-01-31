import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

Future<void> pdfCreate() async {
  var pdf = pw.Document();

  pdf.addPage(
    pw.Page(
      margin: pw.EdgeInsets.all(10),
      orientation: pw.PageOrientation.portrait,
      pageFormat: PdfPageFormat.a4,
      build: (context) {
        return pw.Container(
            height: 400,
            width: double.infinity,
            decoration: pw.BoxDecoration(
              color: PdfColors.black,
            ),
            child: pw.Column(children: [
              pw.Text("Hello this is resume.",
                  style: pw.TextStyle(color: PdfColors.amber50)),
            ]));
      },
    ),
  );

  Directory? directory = await getExternalStorageDirectory();
  // On Flutter, use the [path_provider](https://pub.dev/packages/path_provider) library:
//   final output = await getTemporaryDirectory();
//   final file = File("${output.path}/example.pdf");
  var file = File("${directory!.path}/myresume.pdf");
  print(file.path);
  await file.writeAsBytes(await pdf.save());
}
