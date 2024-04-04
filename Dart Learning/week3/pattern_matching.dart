void main() {
  var list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  var [a, ...rest, _] = list;
  // print(list);
  print(a);
  print(rest);
  // print(j);

  var map = {1: 'one', 2: 'two', 3: 'three'};

  var {1: x, 2: y, 3: _} = map;

  print(x);
  print(y);
  // print(z);

  var record = ('John', 25, true);
  var (name, age, _) = record;
  print(name);
  print(age);
}
