import 'package:flutter/material.dart';
import 'package:mvpcard/screens/bemvindo.dart';

class Client extends StatelessWidget {
  const Client({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NomeEstabelecimento(),
    );
  }
}

class NomeEstabelecimento extends StatefulWidget {
  const NomeEstabelecimento({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _NomeEstabelecimentoState createState() => _NomeEstabelecimentoState();
}

class _NomeEstabelecimentoState extends State<NomeEstabelecimento> {
  // ignore: prefer_final_fields
  TextEditingController _nomeEstabelecimentoController =
      TextEditingController();

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
              height: 373,
              color: const Color(0xffFAEFE4),
            ),
          ),
          Column(
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
                padding: EdgeInsets.only(top: 81, left: 40, right: 27),
                child: Text(
                  "Qual o nome do seu estabelecimento?",
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
                padding: const EdgeInsets.only(top: 37.0, left: 44, right: 46),
                child: TextField(
                  controller: _nomeEstabelecimentoController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                      borderSide: BorderSide(
                        color: Color(0xffB8C2C8),
                      ),
                    ),
                    hintText: "Nome",
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 17,
                      letterSpacing: -0.41,
                      fontFamily: 'Inter',
                      color: Color(0xffB8C2C8),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: MaterialButton(
        onPressed: () {
          // Obtém o nome do estabelecimento do controlador
          String nomeEstabelecimento = _nomeEstabelecimentoController.text;

          // Adicione aqui as ações que você deseja executar quando o botão for pressionado
          // ignore: avoid_print
          print("Nome do estabelecimento: $nomeEstabelecimento");

          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const BemVindo(),
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
