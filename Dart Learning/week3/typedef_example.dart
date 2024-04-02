typedef LangMap = Map<int, String>;
typedef IntFunction = int Function(int);

void main() {
  //! litterals
  10;
  int;
  [1, 2, 3];

  //* ------------------ Function ------------------

  IntFunction? function1 = (x) {
    int y = 10;
    return x + y;
  };
  print(function1(10));
  print(function1.call(10));

  print(function2?.call(90));

// * ------------------ Typedef ------------------
  LangMap map = {1: 'One', 2: 'Two'};
  LangMap map2 = {1: 'Bir', 2: 'Iki'};
  print(map);
  print(map2);
}

IntFunction? function2 = (x) {
  int y = 10;
  return x + y;
};
