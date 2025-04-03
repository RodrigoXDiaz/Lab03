class Persona {
  String nombre;
  String apellido;
  int edad;

  Persona.conNombreApellido(this.nombre, this.apellido) : edad = 0;

  Persona.conEdad(this.edad)
      : nombre = "Desconocido",
        apellido = "Desconocido";

  bool esMayorDeEdad() => edad >= 18;

  @override
  String toString() {
    return "Nombre: $nombre $apellido, Edad: $edad";
  }
}

void main() {
  var persona1 = Persona.conNombreApellido("Juan", "Pérez");
  persona1.edad = 25;

  var persona2 = Persona.conEdad(16);
  persona2.nombre = "Ana";
  persona2.apellido = "García";

  print("--- Persona 1 ---\n");
  print(persona1);
  print("Es mayor de edad: ${persona1.esMayorDeEdad() ? "Sí" : "No"}\n");
  
  print("--- Persona 2 ---\n");
  print(persona2);
  print("Es mayor de edad: ${persona2.esMayorDeEdad() ? "Sí" : "No"}\n");
}