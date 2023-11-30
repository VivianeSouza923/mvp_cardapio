import 'package:flutter/material.dart';
import 'package:mvpcard/functions/increment_decrement.dart';

class TotalMesas extends StatefulWidget {
  const TotalMesas({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _TotalMesasState createState() => _TotalMesasState();
}

class _TotalMesasState extends State<TotalMesas> {
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
              //const SizedBox(width: 24,),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.delete_outline,
                  size: 24,
                  color: Color(0xff1C1B1F),
                ),
              ),
              const SizedBox(
                width: 286,
              ),
              Container(
                width: 32,
                height: 32,
                decoration: const BoxDecoration(
                  color: Color(0xffFFB063), // Cor do círculo
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: const Padding(
                    padding: EdgeInsets.fromLTRB(9, 9, 9, 9),
                    child: Icon(
                      Icons.add,
                      color: Colors.white, // Cor do ícone
                      size: 24,
                    ),
                  ),
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
             Expanded(child: SingleChildScrollView(
              child: Column(
                children: [
                            Container(
            width: 1.0,
            //height: double.infinity, // Define a altura como infinita para estender ao longo da altura disponível
            color: Color(0xffD4DADE), // Cor da barra vertical
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
                  image: const AssetImage('assets/images/MESA1.png'),
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
                  image: const AssetImage('assets/images/mesa2.png'),
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
                  image: const AssetImage('assets/images/mesa3.png'),
                  fit: BoxFit
                      .cover, // Pode ajustar para BoxFit.fill, BoxFit.contain, etc.
                  width: 95, // Largura do botão
                  height: 95, // Altura do botão
                ),
              ),
            ],
          ),
          SizedBox(
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
                  image: const AssetImage('assets/images/mesa4.png'),
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
                  image: const AssetImage('assets/images/mesa5.png'),
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
                  image: const AssetImage('assets/images/mesa6.png'),
                  fit: BoxFit
                      .cover, // Pode ajustar para BoxFit.fill, BoxFit.contain, etc.
                  width: 95, // Largura do botão
                  height: 95, // Altura do botão
                ),
              ),
            ],
          ),
          SizedBox(
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
                  image: const AssetImage('assets/images/mesa8.png'),
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
                  image: const AssetImage('assets/images/mesa9.png'),
                  fit: BoxFit
                      .cover, // Pode ajustar para BoxFit.fill, BoxFit.contain, etc.
                  width: 95, // Largura do botão
                  height: 95, // Altura do botão
                ),
              ),
            ],
          ),
          SizedBox(
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
                  image: const AssetImage('assets/images/mesa10.png'),
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
                  image: const AssetImage('assets/images/mesa11.png'),
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
          SizedBox(
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
          SizedBox(
            height: 16,
          ),
                ],
              ),
              
             ))
        ],
      ),
    );
  }
}
