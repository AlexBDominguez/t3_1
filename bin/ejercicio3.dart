numberWeight(String cadena) {
  List<String> partesCadena = cadena.trim().split(" ").where((x) => x != "").toList();

  if (partesCadena.isEmpty) {
    return "Error";
  }

  try {
    for (int i = 0; i < partesCadena.length; i++) {
      int numCadena = int.parse(partesCadena[i]);

      if (numCadena <= 0) {
        return "Error";
      }
    }
  } catch (e) {
    return "Error";
  }

  partesCadena.sort((a, b) {
    int pesoA = 0;
    for (int i = 0; i < a.length; i++) {
      pesoA += int.parse(a[i]);
    }
    int pesoB = 0;
    for (int i = 0; i < b.length; i++) {
      pesoB += int.parse(b[i]);
    }

    if (pesoA > pesoB) {
      return 1;
    }
    if (pesoA < pesoB) {
      return -1;
    } else {
      return a.compareTo(b);
    }
  });

  String resultado = partesCadena.join(" ");
  return resultado;
}
