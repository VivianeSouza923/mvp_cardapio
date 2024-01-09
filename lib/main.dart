import 'package:flutter/material.dart';
import 'package:mvpcard/screens/mesasocupadas_notificadas.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TotalMesasNotOcu(mesaImages: const []),
    );
  }
}
