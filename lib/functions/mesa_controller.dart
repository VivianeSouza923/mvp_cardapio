class MesaController {
  List<Mesa> mesasImages = [
    Mesa(id: 1, imagePath: 'assets/images/mesa1.png'),
    Mesa(id: 2, imagePath: 'assets/images/mesa2.png'),
    Mesa(id: 3, imagePath: 'assets/images/mesa3.png'),
    Mesa(id: 4, imagePath: 'assets/images/mesa4.png'),
    Mesa(id: 5, imagePath: 'assets/images/mesa5.png'),
    Mesa(id: 6, imagePath: 'assets/images/mesa6.png'),
    Mesa(id: 7, imagePath: 'assets/images/mesa7.png'),
    Mesa(id: 8, imagePath: 'assets/images/mesa8.png'),
    Mesa(id: 9, imagePath: 'assets/images/mesa9.png'),
    Mesa(id: 10, imagePath: 'assets/images/mesa10.png'),
    Mesa(id: 11, imagePath: 'assets/images/mesa11.png'),
    Mesa(id: 12, imagePath: 'assets/images/mesa12.png'),
    Mesa(id: 13, imagePath: 'assets/images/mesa13.png'),
    Mesa(id: 14, imagePath: 'assets/images/mesa14.png'),
    Mesa(id: 15, imagePath: 'assets/images/mesa15.png'),
  ];

  List<bool> mesaExcluir = List.generate(100, (index) => false);
  bool modoExclusao = false;

  void excluirMesa(int index) {
    if (index >= 0 && index < mesasImages.length) {
      mesasImages.removeAt(index);
    }
  }

  void toggleModoExclusao() {
    modoExclusao = !modoExclusao;
    if (!modoExclusao) {
      mesaExcluir = List.generate(100, (index) => false);
    }
  }

  void toggleExcluirMesa(int index) {
    if (modoExclusao) {
      mesaExcluir[index] = !mesaExcluir[index];
    }
  }

  void excluirMesasSelecionadas() {
    for (int i = 0; i < mesaExcluir.length; i++) {
      if (mesaExcluir[i]) {
        excluirMesa(i);
      }
    }
    mesaExcluir = List.generate(100, (index) => false);
  }
}

class Mesa {
  final int id;
  final String imagePath;

  Mesa({required this.id, required this.imagePath});
}
