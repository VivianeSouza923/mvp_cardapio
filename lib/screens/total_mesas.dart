import 'package:flutter/material.dart';
import 'package:mvpcard/functions/mesa_controller.dart';

class TotalMesas extends StatefulWidget {
  final int contagemFinal;

  const TotalMesas({Key? key, required this.contagemFinal, required MesaController mesaController}) : super(key: key);

  @override
  _TotalMesasState createState() => _TotalMesasState();
}

class _TotalMesasState extends State<TotalMesas> {
  List<bool> mesasExcluir =
      List.generate(100, (index) => false); // Use o tamanho adequado

  @override
  Widget build(BuildContext context) {
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
              GestureDetector(
                onTap: () {
                  // Excluir mesas selecionadas
                  for (int i = 0; i < mesasExcluir.length; i++) {
                    if (mesasExcluir[i]) {
    
                      print("Mesa excluída: $i");
                    }
                  }
                  // Reinicia a lista de exclusões
                  setState(() {
                    mesasExcluir =
                        List.generate(widget.contagemFinal, (index) => false);
                  });
                },
                child: Ink.image(
                  image: const AssetImage('assets/images/lixeira.png'),
                  fit: BoxFit.cover,
                  width: 24,
                  height: 24,
                ),
              ),
              const SizedBox(
                width: 286,
              ),
              GestureDetector(
                onTap: () {},
                child: Ink.image(
                  image: const AssetImage('assets/images/adicionar.png'),
                  fit: BoxFit.cover,
                  width: 32,
                  height: 32,
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
                                    if (mesasExcluir[i + j]) {
                                      setState(() {
                                        mesasExcluir[i + j] =
                                            !mesasExcluir[i + j];
                                      });
                                    }
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
                image: const AssetImage('assets/images/bottom2.png'),
                fit: BoxFit.cover,
                width: 41,
                height: 49,
              ),
            ),
            GestureDetector(
              onTap: () {},
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
}
