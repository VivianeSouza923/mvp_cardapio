

import 'package:flutter/material.dart';

class MesaController {
  void excluirMesa(List<AssetImage> mesaImages, int index, Function setStateCallback) {
    setStateCallback(() {

      if (index >= 0 && index < mesaImages.length) {
        mesaImages.removeAt(index);
      }
    });
  }
}
