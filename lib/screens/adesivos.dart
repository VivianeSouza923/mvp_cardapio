import 'package:flutter/material.dart';
import 'download_qrcode_page.dart';

import 'package:mvpcard/widgets/widgets.dart';
import 'package:mvpcard/shared/shared_var.dart';


class AdesivosMesas extends StatefulWidget {
  final int count;





  const AdesivosMesas({Key? key, required this.count}) : super(key: key);

  @override
  State<AdesivosMesas> createState() => _AdesivosMesasState();
}

class _AdesivosMesasState extends State<AdesivosMesas> {
  final TextEditingController textQr = TextEditingController();
  String textQrCodeScan = "";
  List<Widget> buildAdesivos() {
    List<Widget> adesivos = [];

    for (int i = 1; i <= widget.count; i++) {
      adesivos.add(
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DownloadQrCodePage(
                  textQrCode: "CÓDIGO_QR_AQUI",
                  count: i,
                ),
              ),
            );
            // ignore: avoid_print
            print('Toque na mesa $i');
          },
          child: Stack(
            children: [
              Image.asset(
                'assets/images/qr_table.png',
                height: 95,
                width: 95,
              ),
              Positioned(
                top: 16,
                left: 29,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '$i',
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontFamily: 'Figtree',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const Icon(
                      Icons.qr_code_scanner,
                      color: Colors.white,
                      size: 32,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }
    return adesivos;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(
          "Adesivos",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: GridView.count(
                crossAxisCount: 3,
                children: buildAdesivos(),
              ),
            ),
            DefaultButton(
              onPressed: () {},
              buttonText: "Baixar QR Code de todas as mesas",
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        height: 64,
        color: const Color(0xffF5F5F5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {},
              child: Ink.image(
                image: const AssetImage('assets/images/bottom1.png'),
                fit: BoxFit.cover,
                width: 59,
                height: 49,
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Ink.image(
                image: const AssetImage('assets/images/bottom5.png'),
                fit: BoxFit.cover,
                width: 41,
                height: 49,
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Ink.image(
                image: const AssetImage('assets/images/bottom6.png'),
                fit: BoxFit.cover,
                width: 59,
                height: 49,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
