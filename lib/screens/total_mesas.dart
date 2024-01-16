import 'package:flutter/material.dart';
import 'package:mvpcard/functions/increment_decrement.dart';
import 'package:mvpcard/screens/adesivos.dart';
import 'package:mvpcard/screens/fazer_upload_cardapio.dart';

import '../functions/add_mesa.dart';
import '../functions/remover_mesas.dart';
//import 'package:mvpcard/functions/mesa_controller.dart';

class TotalMesas extends StatefulWidget {
  final int contagemFinal;
  final List mesaImages;

  const TotalMesas(
      {Key? key, required this.contagemFinal, required this.mesaImages})
      : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _TotalMesasState createState() => _TotalMesasState();
}

class _TotalMesasState extends State<TotalMesas> {
  // MesaController mesaController = MesaController(); // Adicione esta linha

  ContadorController contadorController = ContadorController();

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_print
    print('Caminhos das imagens:');
    for (int index = 0; index < widget.contagemFinal; index++) {
      // ignore: avoid_print
      print('mesa${index + 1}.png');
    }

    List<AssetImage> mesaImages = List.generate(
      widget.contagemFinal,
      (index) => AssetImage('assets/images/mesa${index + 1}.png'),
    );

    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 58, left: 120, right: 119.15),
            child: Image.asset(
              'assets/images/cardapio_web.png',
              width: 150.85,
              height: 47,
              color: const Color(0xffFFB063),
            ),
          ),
          const SizedBox(
            height: 38,
          ),
          Row(
            children: [
              const SizedBox(
                width: 24,
              ),
              CircleAvatar(
                radius: 25,
                backgroundColor: Colors.transparent,
                child: Center(
                  child: IconButton(
                    icon: const Icon(
                      Icons.delete_outline,
                      color: Color(0xff1C1B1F),
                    ),
                    iconSize: 24,
                    onPressed: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (_) {
                          return RemoveTablesModal();
                        },
                      );
                    },
                  ),
                ),
              ),
              const SizedBox(
                width: 286,
              ),
              CircleAvatar(
                radius: 16,
                backgroundColor: const Color(0xFFFFB063),
                child: Center(
                  child: IconButton(
                    icon: const Icon(
                      Icons.add,
                      color: Colors.black,
                    ),
                    iconSize: 14,
                    onPressed: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (_) {
                          return const AddTablesModal();
                        },
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 33.0, right: 83),
            child: RichText(
              text: TextSpan(
                style: const TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.36,
                  color: Color(0xff2F4858),
                ),
                children: [
                  const TextSpan(
                    text: "Total de mesas cadastradas: ",
                  ),
                  TextSpan(
                    text: "${widget.contagemFinal}",
                    style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Color(0xffFFB063),
                      fontSize: 24,
                      letterSpacing: 0.36,
                      fontFamily: 'Inter',
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: 1.0,
                    width: double.infinity,
                    color: const Color(0xffD4DADE),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 33.0, right: 57),
                    child: Text(
                      "Toque na mesa para remover a notificação.",
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 14,
                        letterSpacing: 0.36,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff81919C),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  for (int i = 0; i < mesaImages.length; i += 3)
                    Column(
                      children: [
                        const SizedBox(height: 16),
                        Row(
                          children: [
                            for (int j = 0;
                                j < 3 && i + j < mesaImages.length;
                                j++)
                              Padding(
                                padding:
                                    EdgeInsets.only(left: j == 0 ? 29.0 : 24.0),
                                child: GestureDetector(
                                  onTap: () {
                                    excluirMesa(i + j);
                                  },
                                  child: Ink.image(
                                    image: mesaImages[i + j],
                                    fit: BoxFit.cover,
                                    width: 95,
                                    height: 95,
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ],
                    ),
                  const SizedBox(
                    height: 16,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        height: 64,
        color: const Color(0xffF5F5F5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FazerUpload(),
                  ),
                );
              },
              child: Ink.image(
                image: const AssetImage('assets/images/bottom1.png'),
                fit: BoxFit.cover,
                width: 59,
                height: 49,
              ),
            ),
            InkWell(
              onTap: () {},
              child: Ink.image(
                image: const AssetImage('assets/images/bottom2.png'),
                fit: BoxFit.cover,
                width: 41,
                height: 49,
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AdesivosMesas(
                      count: widget.contagemFinal,
                    ),
                  ),
                );
              },
              child: Ink.image(
                image: const AssetImage('assets/images/bottom3.png'),
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

  void excluirMesa(int index) {
    setState(() {
      if (index >= 0 && index < widget.mesaImages.length) {
        widget.mesaImages.removeAt(index);
      }
    });
  }
}
