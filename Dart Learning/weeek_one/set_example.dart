void main() {
  List numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 1, 2, 3, 4, 5];
  // print(numbers);
  // print(numbers.toSet());
  Set<int> numbers1 = {1, 2, 3, 7};
  // print(numbers1);
  Set<int> numbers2 = {1, 2, 3, 4, 5, 6};
  // print(numbers2);
  Set numbers3 = numbers2.union(numbers1);

  // print(numbers3.toList()[0]);

  // print(numbers1.difference(numbers2));
  // print(numbers2.difference(numbers1));
  // print(numbers1);

  // print(numbers2.intersection(numbers1));

  Map<int, double> user = {
    1: 3499.99,
    2: 2499.99,
    3: 1499.99,
  };

  user.addAll({4: 5499.99, 5: 999.99});

  // user.remove(4);
  // print(user.keys.toList()[3]);
  // print(user.values.toList()[1]);
  // = >

  print((user.values.reduce((value, element) => value + element))
      .toStringAsFixed(2));

  user.keys.reduce((key, nextKey) {
    print(key * nextKey);
    return key * nextKey;
  });
}
