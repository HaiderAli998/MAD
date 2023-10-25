import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pdfx/pdfx.dart';

void main(){
  runApp(MaterialApp(      title: 'PDF Viwer',
      home:PDFScreen()
  ))
  ;
}
class PDFScreen extends StatefulWidget {
  const PDFScreen({super.key});


  @override
  State<PDFScreen> createState() => _PDFScreenState();
}

String url = 'assets/documents/sample.pdf';

class _PDFScreenState extends State<PDFScreen> {

  final _pdfController = PdfController(
    document: PdfDocument.openAsset(url),
  );

  Future loadPdf() async {
    try {
      await rootBundle.load(url);
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  @override
  void initState() {
    super.initState();
    loadPdf();
  }



  @override
  Widget build(BuildContext context) {
    Widget loaderWidget = const Center(
      child: CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
      ),
    );
    return Scaffold(
      appBar: AppBar(
        title: Text('PDF Viewer'),
      ),
      body: SafeArea(
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: _pdfController == null
                ? loaderWidget
                : PdfView(
                controller: _pdfController),
          )),
    );
  }
}