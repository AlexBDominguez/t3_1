String rgbToHex(String color) {

  List<String> partes = (color.split(" "));

  if (partes.length != 3) {
    return "Error";
  }

  try {
    int numPrimero = int.parse(partes[0]);
    int numSegundo = int.parse(partes[1]);
    int numTercero = int.parse(partes[2]);

    if (numPrimero < 0) {
      numPrimero = 0;
    }
    if (numPrimero > 255) {
      numPrimero = 255;
    }
    if (numSegundo < 0) {
      numSegundo = 0;
    }
    if (numSegundo > 255) {
      numSegundo = 255;
    }
    if (numTercero < 0) {
      numTercero = 0;
    }
    if (numTercero > 255) {
      numTercero = 255;
    }

    String hexPrimero = numPrimero.toRadixString(16).padLeft(2, "0").toUpperCase();
    String hexSegundo = numSegundo.toRadixString(16).padLeft(2, "0").toUpperCase();
    String hexTercero = numTercero.toRadixString(16).padLeft(2, "0").toUpperCase();
    
    return "$hexPrimero$hexSegundo$hexTercero";

  } catch (e) {
    return "Error";
  }
}
