void main(List<String> args) {
  const list = [1, 2, 3, 4, 5];
  list.where((element) => false).map((e) => 0).toList();
}
