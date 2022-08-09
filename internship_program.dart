// Write a program to remove duplicate element from an array using Dart.
void main() {
  List arr = ["sajal", 1, 2, 3, 11, 1, "1", "sajal"];
  print("Initial Array Before removing duplicate entries :\n${arr}");
  for (var i = 0; i < arr.length; i++) {
    for (var j = i + 1; j < arr.length; j++) {
      if (arr[i] == arr[j]) {
        arr.removeAt(j);
      }
    }
  }
  // List arr3 = arr.toSet().toList();
  // print("Directly Generated Final Array : ${arr3}\n");
  print("\n====================================================\n");
  print("Final Array After removing duplicate entries :\n${arr}");
}