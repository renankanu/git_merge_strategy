class DartTeste {
  final int id;
  final String name;

  DartTeste({required this.id, required this.name});

  DartTeste copyWith({
    int? id,
    String? name,
  }) {
    return DartTeste(
      id: id ?? this.id,
      name: name ?? this.name,
    );
  }
}

void createMessage() {
  print('Hello World');
}
