/*
Ejercicio 2 — Conversión de código hexadecimal a componentes RGB

Se desea implementar una función que realice el proceso inverso al del ejercicio anterior, permitiendo obtener los valores individuales de los componentes rojo, verde y azul (RGB) a partir de un color expresado en formato hexadecimal.

La función deberá aceptar una cadena de texto que represente un color en formato hexadecimal y devolver un mapa con las tres componentes RGB correspondientes, expresadas como valores enteros en el rango de 0 a 255.

Detalles funcionales

    La función se denominará hexToRgb y recibirá un único parámetro de tipo String.
    La cadena de entrada representará un color en formato hexadecimal estándar, comenzando siempre por el carácter # y seguido de seis dígitos hexadecimales (0–9, A–F).
    No se distinguirán mayúsculas ni minúsculas en la entrada.
    La función devolverá un objeto de tipo Map<String, int> con la estructura {r: valorR, g: valorG, b: valorB}.
    No se admitirá la notación abreviada de tres caracteres (por ejemplo, #FFF no será válida).
    En caso de que la cadena de entrada no cumpla el formato hexadecimal correcto, la función devolverá el mapa {Error: 0}.

Comportamiento esperado

    Si la entrada es válida, la función devolverá un mapa con tres claves (r, g, b) y sus correspondientes valores enteros en el rango de 0 a 255.
    Ejemplo: "#FF9933" → {r: 255, g: 153, b: 51}
    Si la entrada no es válida, la función devolverá exactamente {Error: 0}.

Especificaciones técnicas

    La cadena de entrada debe cumplir los siguientes requisitos:
        Comenzar con el carácter #.
        Tener una longitud total de 7 caracteres.
        Los seis caracteres posteriores deben ser válidos en el sistema hexadecimal (0–9 o A–F).
    No se permitirá el uso de la notación abreviada (por ejemplo, #FFF) ni la omisión del carácter # inicial.
    En caso de error de formato, se devolverá el mapa {Error: 0} en lugar de generar excepciones o imprimir mensajes por consola.

Ejemplos de ejecución

Entrada: "#FFFFFF"
Salida: {r: 255, g: 255, b: 255}

Entrada: "#ff9933"
Salida: {r: 255, g: 153, b: 51}

Entrada: "#9400D3"
Salida: {r: 148, g: 0, b: 211}

Entrada: "#000000"
Salida: {r: 0, g: 0, b: 0}

Entrada: "FF9933"
Salida: {Error: 0}

Entrada: "#FFF"
Salida: {Error: 0}

Entrada: "#GGGGGG"
Salida: {Error: 0}

Entrada: "#1234567"
Salida: {Error: 0}

Entrada: ""
Salida: {Error: 0}
*/


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