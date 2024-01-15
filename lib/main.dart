import 'package:flutter/material.dart';
import 'package:mvpcard/screens/adesivos.dart';
import 'package:mvpcard/screens/fazer_upload_cardapio.dart';
import 'package:mvpcard/screens/mesasocupadas_notificadas.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AdesivosMesas(),
    );
  }
}
