Map<String, int> hexToRgb(String color) {

  if(!color.startsWith("#") || color.length != 7) {
    return {"Error": 0};
  }

  String hexadecimal = color.substring(1).toUpperCase();

  String rHexadecimal = hexadecimal.substring(0, 2);
  String gHexadecimal = hexadecimal.substring(2, 4);
  String bHexadecimal = hexadecimal.substring(4, 6);

  bool esHexadecimal (String hexadecimal){
    String validos = "0123456789ABCDEF";
    for(int i=0; i < hexadecimal.length; i++){
      if(!validos.contains(hexadecimal[i])){
        return false;
      }
    }
    return true;
  }

  if(!esHexadecimal(rHexadecimal)|| !esHexadecimal(gHexadecimal) || !esHexadecimal(bHexadecimal)){
    return {"Error": 0};
  }

  int r = int.parse(rHexadecimal, radix: 16);
  int g = int.parse(gHexadecimal, radix: 16);
  int b = int.parse(bHexadecimal, radix: 16);

  return {"r": r, "g": g, "b": b};

}