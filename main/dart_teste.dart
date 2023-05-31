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

  void method() {
    print('method');
  }
}

/// This is a function
///
/// This function create a message
///
/// ```dart
/// createMessage();
/// ```
void createMessage() {
  print('Hello World');
}

/// This is a function
