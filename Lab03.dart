class Persona {
  String nombre;
  String apellido;
  int edad;

  // Constructor que recibe nombre y apellido
  Persona.conNombreApellido(this.nombre, this.apellido) : edad = 0;

  // Constructor que recibe solo la edad
  Persona.conEdad(this.edad)
      : nombre = "Desconocido",
        apellido = "Desconocido";

  // Método para verificar si es mayor de edad
  bool esMayorDeEdad() => edad >= 18;

  // Sobrescribiendo toString
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

  print(persona1);
  print("Es mayor de edad: ${persona1.esMayorDeEdad() ? "Sí" : "No"}");

  print(persona2);
  print("Es mayor de edad: ${persona2.esMayorDeEdad() ? "Sí" : "No"}");
}
