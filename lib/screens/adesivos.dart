import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';

class AdesivosMesas extends StatefulWidget {
  const AdesivosMesas({Key? key}) : super(key: key);

  @override
  _AdesivosMesasState createState() => _AdesivosMesasState();
}

class _AdesivosMesasState extends State<AdesivosMesas> {
  bool isPdfUploaded = false; // Adicionado para rastrear o status do upload

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 30),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 153),
            child: Text(
              "Adesivos",
              style: TextStyle(
                fontFamily: 'FigTree',
                fontWeight: FontWeight.w400,
                fontSize: 20,
                letterSpacing: 0.36,
                color: Color(0xff000000),
              ),
            ),
          ),
          const SizedBox(height: 131,),
          
       

          const SizedBox(height: 38,),

          Container(
            width: 342,
            height: 48,
            decoration: BoxDecoration(
              color: const Color(0xffFFB063),
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextButton(
              onPressed: () {},
              child: const Text(
                "Baixar QR Code de todas as mesas",
                style: TextStyle(
                  fontFamily: 'Inter',
                  color: Color(0xff000000),
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),

          const SizedBox(height: 24),
        ],
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
