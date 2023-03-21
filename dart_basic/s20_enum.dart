enum Routes {
  first('/');

  final String name;
  const Routes(this.name);

  @override
  String toString() => '$name';
}

void main(List<String> args) {
  print(Routes.first);
  print(Routes.first.name);
}
