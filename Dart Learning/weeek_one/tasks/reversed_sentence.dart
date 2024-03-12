void main() {
  String sentence = 'Hello My Name is Perviz';
  print(sentence);
  var wordList = sentence.split(' ');
  var revercedList = wordList.reversed;
  print(revercedList.join(' ').toString());
}
