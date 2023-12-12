import 'package:flutter/material.dart';
import 'package:mvpcard/functions/increment_decrement.dart';

class TotalMesasNotOcu extends StatefulWidget {
  const TotalMesasNotOcu({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _TotalMesasNotOcuState createState() => _TotalMesasNotOcuState();
}

class _TotalMesasNotOcuState extends State<TotalMesasNotOcu> {
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
              GestureDetector(
                onTap: () {},
                child: Ink.image(
                  image: const AssetImage('assets/images/lixeira.png'),
                  fit: BoxFit
                      .cover, // Pode ajustar para BoxFit.fill, BoxFit.contain, etc.
                  width: 24, // Largura do botão
                  height: 24, // Altura do botão
                ),
              ),
              const SizedBox(
                width: 286,
              ),
              GestureDetector(
                onTap: () {},
                child: Ink.image(
                  image: const AssetImage('assets/images/adicionar.png'),
                  fit: BoxFit
                      .cover, // Pode ajustar para BoxFit.fill, BoxFit.contain, etc.
                  width: 32, // Largura do botão
                  height: 32, // Altura do botão
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 33.0, right: 83),
            child: Text(
              "Total de mesas cadastradas: ",
              style: TextStyle(
                fontFamily: 'Inter',
                fontSize: 17,
                fontWeight: FontWeight.w400,
                letterSpacing: 0.36,
                color: Color(0xff2F4858),
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
                    width: double
                        .infinity, // Define a altura como infinita para estender ao longo da altura disponível
                    color: const Color(0xffD4DADE), // Cor da barra vertical
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
                  Row(
                    children: [
                      const SizedBox(
                        width: 29,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Ink.image(
                          image: const AssetImage('assets/images/mesa_notificacao1.png'),
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
                          image: const AssetImage('assets/images/mesa_notificacao4.png'),
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
                          image: const AssetImage('assets/images/mesa_notificacao10.png'),
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
                          image: const AssetImage('assets/images/mesa_ocupada2.png'),
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
                          image: const AssetImage('assets/images/mesa_ocupada3.png'),
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
                          image: const AssetImage('assets/images/mesa_ocupada5.png'),
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
                          image: const AssetImage('assets/images/mesa_ocupada8.png'),
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
                          image: const AssetImage('assets/images/mesa_ocupada9.png'),
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
                          image: const AssetImage('assets/images/mesa_ocupada11.png'),
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
                          image: const AssetImage('assets/images/mesa6.png'),
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
                          image: const AssetImage('assets/images/mesa7.png'),
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
                          image: const AssetImage('assets/images/mesa12.png'),
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
                          image: const AssetImage('assets/images/mesa13.png'),
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
                          image: const AssetImage('assets/images/mesa14.png'),
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
                          image: const AssetImage('assets/images/mesa15.png'),
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
                          fit: BoxFit
                              .cover, // Pode ajustar para BoxFit.fill, BoxFit.contain, etc.
                          width: 59, // Largura do botão
                          height: 49, // Altura do botão
                        ),
                      ),

                      GestureDetector(
                        onTap: () {},
                        child: Ink.image(
                          image: const AssetImage('assets/images/bottom2.png'),
                          fit: BoxFit
                              .cover, // Pode ajustar para BoxFit.fill, BoxFit.contain, etc.
                          width: 41, // Largura do botão
                          height: 49, // Altura do botão
                        ),
                      ),

                      GestureDetector(
                        onTap: () {},
                        child: Ink.image(
                          image: const AssetImage('assets/images/bottom3.png'),
                          fit: BoxFit
                              .cover, // Pode ajustar para BoxFit.fill, BoxFit.contain, etc.
                          width: 59, // Largura do botão
                          height: 49, // Altura do botão
                        ),
                      ),

          ],
        ),
      ),
    );
  }
}
