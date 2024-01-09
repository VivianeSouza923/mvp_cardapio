import 'package:flutter/material.dart';
import 'package:mvpcard/functions/increment_decrement.dart';

import '../functions/add_mesa.dart';
import '../functions/remover_mesas.dart';
//import 'package:mvpcard/functions/mesa_controller.dart';

class TotalMesasNotOcu extends StatefulWidget {
  //final int contagemFinal;
  final List mesaImages;

  TotalMesasNotOcu({Key? key, required this.mesaImages}) : super(key: key);

  @override
  _TotalMesasNotOcuState createState() => _TotalMesasNotOcuState();
}

class _TotalMesasNotOcuState extends State<TotalMesasNotOcu> {
  // MesaController mesaController = MesaController(); // Adicione esta linha

  ContadorController contadorController = ContadorController();

  @override
  Widget build(BuildContext context) {
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
                          return const RemoveTablesModal();
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
                    text: "15",
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
                  for (int i = 0; i < 1; i += 3)
                    Column(
                      children: [
                        const SizedBox(height: 16),
                        Row(
                          children: [
                            const SizedBox(
                              width: 24,
                            ),
                            GestureDetector(
                              onTap: () {
                                _exibirPopup(context);
                              },
                              child: Ink.image(
                                image: const AssetImage(
                                    'assets/images/mesa_notificacao1.png'),
                                fit: BoxFit
                                    .cover, // Pode ajustar para BoxFit.fill, BoxFit.contain, etc.
                                width: 95, // Largura do botão
                                height: 95, // Altura do botão
                              ),
                            ),
                            const SizedBox(
                              width: 24,
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Ink.image(
                                image: const AssetImage(
                                    'assets/images/mesa_notificacao4.png'),
                                fit: BoxFit
                                    .cover, // Pode ajustar para BoxFit.fill, BoxFit.contain, etc.
                                width: 95, // Largura do botão
                                height: 95, // Altura do botão
                              ),
                            ),
                            const SizedBox(
                              width: 24,
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Ink.image(
                                image: const AssetImage(
                                    'assets/images/mesa_notificacao10.png'),
                                fit: BoxFit
                                    .cover, // Pode ajustar para BoxFit.fill, BoxFit.contain, etc.
                                width: 95, // Largura do botão
                                height: 95, // Altura do botão
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Row(
                          children: [
                            const SizedBox(
                              width: 29,
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Ink.image(
                                image: const AssetImage(
                                    'assets/images/mesa_ocupada2.png'),
                                fit: BoxFit
                                    .cover, // Pode ajustar para BoxFit.fill, BoxFit.contain, etc.
                                width: 95, // Largura do botão
                                height: 95, // Altura do botão
                              ),
                            ),
                            const SizedBox(
                              width: 24,
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Ink.image(
                                image: const AssetImage(
                                    'assets/images/mesa_ocupada3.png'),
                                fit: BoxFit
                                    .cover, // Pode ajustar para BoxFit.fill, BoxFit.contain, etc.
                                width: 95, // Largura do botão
                                height: 95, // Altura do botão
                              ),
                            ),
                            const SizedBox(
                              width: 24,
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Ink.image(
                                image: const AssetImage(
                                    'assets/images/mesa_ocupada5.png'),
                                fit: BoxFit
                                    .cover, // Pode ajustar para BoxFit.fill, BoxFit.contain, etc.
                                width: 95, // Largura do botão
                                height: 95, // Altura do botão
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Row(
                          children: [
                            const SizedBox(
                              width: 29,
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Ink.image(
                                image: const AssetImage(
                                    'assets/images/mesa_ocupada8.png'),
                                fit: BoxFit
                                    .cover, // Pode ajustar para BoxFit.fill, BoxFit.contain, etc.
                                width: 95, // Largura do botão
                                height: 95, // Altura do botão
                              ),
                            ),
                            const SizedBox(
                              width: 24,
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Ink.image(
                                image: const AssetImage(
                                    'assets/images/mesa_ocupada9.png'),
                                fit: BoxFit
                                    .cover, // Pode ajustar para BoxFit.fill, BoxFit.contain, etc.
                                width: 95, // Largura do botão
                                height: 95, // Altura do botão
                              ),
                            ),
                            const SizedBox(
                              width: 24,
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Ink.image(
                                image: const AssetImage(
                                    'assets/images/mesa_ocupada11.png'),
                                fit: BoxFit
                                    .cover, // Pode ajustar para BoxFit.fill, BoxFit.contain, etc.
                                width: 95, // Largura do botão
                                height: 95, // Altura do botão
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Row(
                          children: [
                            const SizedBox(
                              width: 29,
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Ink.image(
                                image:
                                    const AssetImage('assets/images/mesa6.png'),
                                fit: BoxFit
                                    .cover, // Pode ajustar para BoxFit.fill, BoxFit.contain, etc.
                                width: 95, // Largura do botão
                                height: 95, // Altura do botão
                              ),
                            ),
                            const SizedBox(
                              width: 24,
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Ink.image(
                                image:
                                    const AssetImage('assets/images/mesa7.png'),
                                fit: BoxFit
                                    .cover, // Pode ajustar para BoxFit.fill, BoxFit.contain, etc.
                                width: 95, // Largura do botão
                                height: 95, // Altura do botão
                              ),
                            ),
                            const SizedBox(
                              width: 24,
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Ink.image(
                                image: const AssetImage(
                                    'assets/images/mesa12.png'),
                                fit: BoxFit
                                    .cover, // Pode ajustar para BoxFit.fill, BoxFit.contain, etc.
                                width: 95, // Largura do botão
                                height: 95, // Altura do botão
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Row(
                          children: [
                            const SizedBox(
                              width: 29,
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Ink.image(
                                image: const AssetImage(
                                    'assets/images/mesa13.png'),
                                fit: BoxFit
                                    .cover, // Pode ajustar para BoxFit.fill, BoxFit.contain, etc.
                                width: 95, // Largura do botão
                                height: 95, // Altura do botão
                              ),
                            ),
                            const SizedBox(
                              width: 24,
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Ink.image(
                                image: const AssetImage(
                                    'assets/images/mesa14.png'),
                                fit: BoxFit
                                    .cover, // Pode ajustar para BoxFit.fill, BoxFit.contain, etc.
                                width: 95, // Largura do botão
                                height: 95, // Altura do botão
                              ),
                            ),
                            const SizedBox(
                              width: 24,
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Ink.image(
                                image: const AssetImage(
                                    'assets/images/mesa15.png'),
                                fit: BoxFit
                                    .cover, // Pode ajustar para BoxFit.fill, BoxFit.contain, etc.
                                width: 95, // Largura do botão
                                height: 95, // Altura do botão
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

  // Função para exibir o popup
  void _exibirPopup(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext builder) {
        return Container(
          color: Color(0xffF5F5F5),
          height: 140,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Quer liberar esta mesa?',
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'FigTree',
                    fontWeight: FontWeight.w700,
                    letterSpacing: -0.41),
              ),
              Row(
                children: [
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Não",
                        style: TextStyle(
                            color: Color(0xff010D0D),
                            fontFamily: 'FigTree',
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            letterSpacing: -0.41),
                      ),
                      style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all(Color(0xffB8C2C8)),
                              side:MaterialStateBorderSide.resolveWith((states) => null)
                              ),
                              )
                ],
              )
            ],
          ),
        );
      },
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
