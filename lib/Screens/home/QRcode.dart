// ignore_for_file: file_names, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class QrCode extends StatelessWidget {
  const QrCode({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Fridge',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Qrcode(title: 'Scan'),
    );
  }
}

class Qrcode extends StatefulWidget {
  const Qrcode({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<Qrcode> createState() => _QrcodeState();
}

class _QrcodeState extends State<Qrcode> {
  final GlobalKey _gLobalkey = GlobalKey();
  QRViewController? controller;
  Barcode? result;
  void qr(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((event) {
      setState(() {
        result = event;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 400,
              width: 400,
              child: QRView(key: _gLobalkey, onQRViewCreated: qr),
            ),
            Center(
              child: (result != null)
                  ? Text('${result!.code}')
                  : const Text('Scan a code'),
            )
          ],
        ),
      ),
    );
  }
}
