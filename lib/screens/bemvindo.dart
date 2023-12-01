import 'package:flutter/material.dart';
import 'package:mvpcard/functions/increment_decrement.dart';
import 'package:mvpcard/screens/total_mesas.dart';

class BemVindo extends StatefulWidget {
  const BemVindo({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _BemVindoState createState() => _BemVindoState();
}

class _BemVindoState extends State<BemVindo> {
  ContadorController contadorController = ContadorController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 476,
            left: 144,
            right: 20,
            bottom: -50,
            child: Image.asset(
              'assets/images/cutlery.png',
              width: 226,
              height: 393,
              color: const Color(0xffFAEFE4),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(top: 140, left: 95, right: 94.94),
                  child: Image.asset(
                    'assets/images/cardapio_web.png',
                    width: 200.6,
                    height: 68,
                    color: const Color(0xffFFB063),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 80, left: 43, right: 43),
                  child: Text(
                    "Bem vindo ao Cardápio Web,\ncadastre as mesas, os QR code de\n acesso serão gerados\n automaticamente na área Adesivos.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Color(0xff000000),
                      fontFamily: 'Inter',
                      fontSize: 17,
                      letterSpacing: 0.36,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 34, left: 43, right: 43),
                  child: Text(
                    "Quantas mesas tem o seu\n estabelecimento?",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Color(0xff000000),
                      fontFamily: 'Inter',
                      fontSize: 17,
                      letterSpacing: 0.36,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 27, left: 100),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          setState(() {
                            contadorController.decrementar();
                          });
                        },
                        icon: Image.asset(
                          'assets/images/menos.png',
                          width: 24,
                          height: 24,
                        ),
                      ),
                      const SizedBox(
                        width: 21,
                      ),
                      Container(
                        width: 62,
                        height: 62,
                        decoration: BoxDecoration(
                          color: const Color(0xffF5F5F5),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: const Color(0xff81919C),
                            width: 1.0,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            contadorController.contador.toString(),
                            style: const TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 24,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            contadorController.incrementar();
                          });
                        },
                        icon: Image.asset(
                          'assets/images/mais.png',
                          width: 24,
                          height: 24,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: MaterialButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const TotalMesas(),
            ),
          );
        },
        color: const Color(0xffFFB063),
        elevation: 0,
        minWidth: 62,
        height: 62,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
        child: const Expanded(
          child: Icon(
            Icons.arrow_forward_ios,
            color: Color(0xff1C1B1F),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
